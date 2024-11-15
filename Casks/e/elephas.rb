cask "elephas" do
  version "10.12"
  sha256 "4342d0e0d485cec3c80d9791ab88b9c71d87764ca5ad38646d7a95a760aaff86"

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
