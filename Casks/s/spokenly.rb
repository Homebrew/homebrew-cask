cask "spokenly" do
  version "2.21.2"
  sha256 "a5dab0612308f9cd90816a89e2c017002a9d9c7288fea6ec923d94149952fe1a"

  url "https://cdn.spokenly.app/releases/macos/Spokenly-#{version}.dmg"
  name "Spokenly"
  desc "Dictation and transcription app with AI-powered editing"
  homepage "https://spokenly.app/"

  livecheck do
    url "https://spokenly.app/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :sonoma

  app "Spokenly.app"

  zap trash: [
    "~/Library/Application Support/Spokenly",
    "~/Library/Caches/app.spokenly",
    "~/Library/Preferences/app.spokenly.plist",
  ]
end
