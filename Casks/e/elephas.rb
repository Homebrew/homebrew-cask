cask "elephas" do
  version "9.27"
  sha256 "d1e577671d3648e4e075a08e3b67b797a78671afa492e2adab14ab115761a3f8"

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
