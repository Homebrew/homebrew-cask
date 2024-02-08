cask "ssh-tunnel-manager" do
  version "227.006,1478083232"
  sha256 "11c8b7ca6f3a79b2cefdfc665a6cc6d5aaf2dac199e9380f44c3e1aea191c41a"

  url "https://dl.devmate.com/org.tynsoe.sshtunnelmanager/#{version.csv.first}/#{version.csv.second}/SSHTunnelManager-#{version.csv.first}.zip",
      verified: "dl.devmate.com/org.tynsoe.sshtunnelmanager/"
  name "SSH Tunnel Manager"
  desc "Application for managing SSH tunnels"
  homepage "https://tynsoe.org/stm/"

  livecheck do
    url "https://updates.devmate.com/org.tynsoe.sshtunnelmanager.xml"
    regex(%r{/(\d+)/SSHTunnelManager\d*?[_-]v?(\d+(?:\.\d+)*)\.(?:dmg|zip)}i)
    strategy :sparkle do |item, regex|
      match = item.url.match(regex)
      next if match.blank?

      "#{match[2]},#{match[1]}"
    end
  end

  app "SSH Tunnel Manager.app"

  zap trash: "~/Library/Preferences/org.tynsoe.sshtunnelmanager.plist"
end
