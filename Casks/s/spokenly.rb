cask "spokenly" do
  version "2.30.4"
  sha256 "bb577d1aba40adb77c2a2581d9c1b5692215413beaf320b19565061da526b0ef"

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
