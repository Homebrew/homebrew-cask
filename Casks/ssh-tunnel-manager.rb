cask "ssh-tunnel-manager" do
  version "227.006,1478083232"
  sha256 "11c8b7ca6f3a79b2cefdfc665a6cc6d5aaf2dac199e9380f44c3e1aea191c41a"

  url "https://dl.devmate.com/org.tynsoe.sshtunnelmanager/#{version.csv.first}/#{version.csv.second}/SSHTunnelManager-#{version.csv.first}.zip",
      verified: "dl.devmate.com/org.tynsoe.sshtunnelmanager/"
  name "SSH Tunnel Manager"
  homepage "https://tynsoe.org/stm/"

  livecheck do
    url "https://updates.devmate.com/org.tynsoe.sshtunnelmanager.xml"
    strategy :sparkle do |item|
      "#{item.version},#{item.url[%r{/(\d+)/SSHTunnelManager-(?:\d+(?:\.\d+)*)\.zip}i, 1]}"
    end
  end

  app "SSH Tunnel Manager.app"

  zap trash: "~/Library/Preferences/org.tynsoe.sshtunnelmanager.plist"
end
