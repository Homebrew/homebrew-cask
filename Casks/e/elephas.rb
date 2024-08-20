cask "elephas" do
  version "9.36"
  sha256 "fd9dac458c0a1dff82f94e14903eebc8d092dd2edc88256943649db7401e5ac4"

  url "https://assets.elephas.app/Elephas_#{version.no_dots}.dmg"
  name "Elephas"
  desc "Personal AI Writing Assistant"
  homepage "https://elephas.app/"

  livecheck do
    url "https://assets.elephas.app/index.xml"
    strategy :sparkle
  end

  conflicts_with cask: "elephas@beta"
  depends_on macos: ">= :monterey"

  app "Elephas.app"

  zap trash: [
    "~/Library/Application Support/Elephas",
    "~/Library/Caches/com.kamban.elephas",
    "~/Library/HTTPStorages/com.kamban.elephas",
    "~/Library/Preferences/com.kamban.elephas.plist",
  ]
end
