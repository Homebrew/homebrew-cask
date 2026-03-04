cask "spokenly" do
  version "2.17.6"
  sha256 "6b4b2a59bd9dbbaffab2be59f95afd0db957d8490d81249bca6fbdab94f72114"

  url "https://cdn.spokenly.app/releases/macos/Spokenly-#{version}.dmg"
  name "Spokenly"
  desc "Dictation and transcription app with AI-powered editing"
  homepage "https://spokenly.app/"

  livecheck do
    url "https://spokenly.app/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :sonoma"

  app "Spokenly.app"

  zap trash: [
    "~/Library/Application Support/Spokenly",
    "~/Library/Caches/Spokenly",
    "~/Library/Preferences/app.spokenly.mac.plist",
  ]
end
