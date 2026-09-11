cask "tella" do
  version "2.33,254"
  sha256 "a763e5ac00f7e2db5caed0d852d9b0e8fe1b8a2c67f9fa2180232598357e5586"

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
