cask "elephas" do
  version :latest
  sha256 :no_check

  url "https://elephas.app/downloads/Elephas_#{version}.dmg"
  name "elephas"
  desc "Personal AI Writing Assistant"
  homepage "https://elephas.app/"

  app "Elephas.app"

  zap trash: [
    "~/Library/Application Support/Elephas",
    "~/Library/Caches/com.kamban.elephas",
    "~/Library/HTTPStorages/com.kamban.elephas",
    "~/Library/Preferences/com.kamban.elephas.plist",
  ]
end
