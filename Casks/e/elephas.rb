cask "elephas" do
  version "10.06"
  sha256 "51905ed97d51e954bb8cb5b6936ff4144938d4dcdde685cc939da35191ab7f51"

  url "https://assets.elephas.app/Elephas_#{version.dots_to_underscores}.dmg"
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
