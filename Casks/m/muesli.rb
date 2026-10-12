cask "muesli" do
  version "0.8.5"
  sha256 "4f0612fe21ea9f185f3ddafaa4dd5b1dea79989f98f40ba71bd35115899b7ae4"

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
