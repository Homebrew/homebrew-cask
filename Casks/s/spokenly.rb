cask "spokenly" do
  version "2.20.3"
  sha256 "28a445f2198671fb9aaae943ac67a918c77fdfbac883cea2b0a54cc421ae1c67"

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
