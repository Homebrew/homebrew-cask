cask "network-weather" do
  version "1.3.2,114"
  sha256 "a64613bb8d471c768a736b6772ad0f13cef0c58979ee75ddaece03f43ee37281"

  url "https://pkgs.networkweather.com/macOS/NetworkWeather-#{version.csv.first}.#{version.csv.second}-Universal.pkg"
  name "Network Weather"
  desc "Network diagnostics tool"
  homepage "https://www.networkweather.com/"

  livecheck do
    url "https://pkgs.networkweather.com/macOS/appcast.xml"
    strategy :sparkle do |items|
      items.find { |item| item.channel.nil? }&.nice_version
    end
  end

  auto_updates true
  depends_on macos: :sonoma

  pkg "NetworkWeather-#{version.csv.first}.#{version.csv.second}-Universal.pkg"

  uninstall launchctl: ["application.com.networkweather.nwx.macos.1194558321.1194558326",
                        "com.networkweather.BPFAccess"],
            quit:      "com.networkweather.nwx.macos",
            pkgutil:   "com.networkweather.nwx.macos"

  zap trash: [
    "/Library/Application Support/NetworkWeather",
    "/Library/LaunchDaemons/com.networkweather.BPFAccess.plist",
    "~/Library/Application Support/NetworkWeather",
    "~/Library/Caches/com.networkweather.nwx.macos",
    "~/Library/HTTPStorages/com.networkweather.nwx.macos",
    "~/Library/Logs/NetworkWeather",
    "~/Library/Preferences/com.networkweather.nwx.macos.plist",
  ]
end
