cask "holavpn" do
  version "4.4,1.262.246"
  sha256 "675d5e9ad954f3815fa72db2e8c0e9977c1b7d5e8ffc7b675b2324cc00c69301"

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
    "~/Library/Application Support/org.hola.hola2e",
    "~/Library/Caches/org.hola.hola2e*",
    "~/Library/HTTPStorages/org.hola.hola2e*",
    "~/Library/LaunchAgents/org.hola.svc.plist",
    "~/Library/Preferences/group.org.hola.hola2e.widget-container.plist",
    "~/Library/Preferences/org.hola.hola2e*.plist",
    "~/Library/Saved Application State/org.hola.hola2e*.savedState",
  ]
end
