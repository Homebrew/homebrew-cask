cask "muesli" do
  version "0.8.4"
  sha256 "79727313003ddb29289b6872a094a84ec9b2a011046a1344cea7e3598c4fc596"

  url "https://github.com/Muesli-HQ/muesli/releases/download/v#{version}/Muesli-#{version}.dmg"
  name "Muesli"
  desc "Local-first dictation and meeting transcription"
  homepage "https://muesli.works/"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Muesli.app"

  zap trash: [
    "~/.cache/muesli",
    "~/Library/Application Support/Muesli",
    "~/Library/Caches/com.muesli.app",
    "~/Library/HTTPStorages/com.muesli.app",
    "~/Library/Preferences/com.muesli.app.plist",
  ]
end
