cask "tella" do
  version "2.36,257"
  sha256 "f28a48575300103e28c57bc1161bd6242dd25a21d321fec1a2146f166f81f439"

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
    "~/Library/Containers/tv.tella.Tella",
    "~/Library/Preferences/tv.tella.Tella.plist",
  ]
end
