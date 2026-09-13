cask "network-weather" do
  version "1.3.1.113"
  sha256 "bc3db56273f53b384c7a0edc464676b091b04872ea24c1b7897351d7ea23d06e"

  url "https://pkgs.networkweather.com/macOS/NetworkWeather-#{version}-Universal.pkg"
  name "Network Weather"
  desc "Network diagnostics tool"
  homepage "https://www.networkweather.com/"

  livecheck do
    url "https://pkgs.networkweather.com/macOS/appcast.xml"
    strategy :sparkle do |items|
      stable_item = items.find { |item| item.channel.nil? }
      next unless stable_item

      "#{stable_item.short_version}.#{stable_item.version}"
    end
  end

  auto_updates true
  depends_on macos: :sonoma

  pkg "NetworkWeather-#{version}-Universal.pkg"

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
