cask "holavpn" do
  version "4.0,1.257.548"
  sha256 "2f6c28366e98c2e23209e298360f6fad5a4e7777785b39d0bde28bd3f2949860"

  url "https://cdn4.hola.org/static/HolaVPN2E-#{version.csv.first}-#{version.csv.second}.dmg"
  name "Hola VPN"
  desc "Peer-to-peer VPN"
  homepage "https://hola.org/"

  livecheck do
    url "https://hola.org/products/desktop"
    regex(/svc[_-]versions.*?"iosmac2e":\s*"(\d+(?:\.\d+)*)".*?"iosmac2e[_-]build":\s*"(\d+(?:\.\d+)*)"/i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| "#{match[0]},#{match[1]}" }
    end
  end

  depends_on macos: :monterey

  app "HolaVPN2E.app"

  zap trash: [
    "~/Documents/holavpn2e.db*",
    "~/Library/Application Support/Hola2E",
    "~/Library/Caches/org.hola.hola2e*",
    "~/Library/HTTPStorages/org.hola.hola2e*",
    "~/Library/LaunchAgents/org.hola.svc.plist",
    "~/Library/Preferences/group.org.hola.hola2e.widget-container.plist",
    "~/Library/Preferences/org.hola.hola2e*.plist",
    "~/Library/Saved Application State/org.hola.hola2e*.savedState",
  ]
end
