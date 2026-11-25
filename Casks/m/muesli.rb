cask "muesli" do
  version "0.8.6"
  sha256 "673b182fd75953fb48939af61db5f853c946e9c96ae65b6d75f100b0c1df7cf0"

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
  binary "#{appdir}/Muesli.app/Contents/MacOS/muesli-cli"

  zap trash: [
    "~/.cache/muesli",
    "~/Library/Application Support/Muesli",
    "~/Library/Caches/com.muesli.app",
    "~/Library/HTTPStorages/com.muesli.app",
    "~/Library/Preferences/com.muesli.app.plist",
  ]
end
