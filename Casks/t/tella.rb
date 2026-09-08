cask "tella" do
  version "2.32,253"
  sha256 "aa074621f536c28e8602abe09a59ddfd3e8689670c9a5bd7f061317c82ae8707"

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
