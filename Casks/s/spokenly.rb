cask "spokenly" do
  version "2.35.2"
  sha256 "fb0494be85eb22f78bd93c7d1131a94bed2f33c7381ee34ec2740157f6bab4ae"

  url "https://cdn.spokenly.app/releases/macos/Spokenly-#{version}.dmg"
  name "Spokenly"
  desc "Dictation and transcription app with AI-powered editing"
  homepage "https://spokenly.app/"

  livecheck do
    url "https://spokenly.app/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :ventura

  app "Spokenly.app"

  uninstall quit: "app.spokenly"

  zap trash: [
    "~/Library/Application Support/app.spokenly.revenuecat",
    "~/Library/Application Support/Spokenly",
    "~/Library/Caches/app.spokenly",
    "~/Library/HTTPStorages/app.spokenly",
    "~/Library/Preferences/app.spokenly.plist",
  ]
end
