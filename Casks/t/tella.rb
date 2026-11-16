cask "tella" do
  version "2.40,261"
  sha256 "fdbee0430c761643d1922fb2d54aa59a4e4ddb61cdc1032ef9420434b0ddea7a"

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
