cask "tella" do
  version "2.42,263"
  sha256 "0f7ccc937fc7ba2c48ed3de45bb2bc16c1540e81b2f798ca3d98cf9e1e8c6208"

  url "https://mac.tella.tv/Tella-#{version.csv.first}-#{version.csv.second}.dmg"
  name "Tella"
  desc "Screen recorder"
  homepage "https://www.tella.tv/"

  livecheck do
    url "https://mac.tella.tv/appcast.xml"
    strategy :sparkle do |items|
      items.find { |item| item.channel.nil? }&.nice_version
    end
  end

  auto_updates true
  depends_on macos: :ventura

  app "Tella.app"

  zap trash: [
    "~/Library/Application Scripts/tv.tella.Tella",
    "~/Library/Application Support/tv.tella.Tella",
    "~/Library/Caches/tv.tella.Tella",
    "~/Library/Containers/tv.tella.Tella",
    "~/Library/HTTPStorages/tv.tella.Tella",
    "~/Library/Preferences/tv.tella.Tella.plist",
  ]
end
