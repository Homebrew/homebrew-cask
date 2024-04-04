cask "holavpn" do
  version "2.80,1.213.148"
  sha256 "d479d02813b3b10bd129cfe8073162c43ae718d2124a670a62f398e0f694f088"

  url "https://cdn4.hola.org/static/HolaVPN#{version.csv.first.major}E-#{version.csv.first}-#{version.csv.second}.dmg"
  name "Hola VPN"
  desc "Peer-to-peer VPN"
  homepage "https://hola.org/"

  livecheck do
    url "https://hola.org/download"
    regex(/"iosmac2e":"(#{version.csv.first.major}[^"]+)"(?:,"iosmac2e_next":"[^"]+")?,"iosmac2e_build":"([^"]+)"/i)
    strategy :page_match do |page|
      page.scan(regex).map { |match| "#{match[0]},#{match[1]}" }
    end
  end

  depends_on macos: ">= :catalina"

  app "HolaVPN#{version.csv.first.major}E.app"

  zap trash: [
    "~/Documents/holavpn#{version.csv.first.major}e.db*",
    "~/Library/Caches/org.hola.hola#{version.csv.first.major}e-nosdk",
    "~/Library/Preferences/org.hola.hola#{version.csv.first.major}e-nosdk.plist",
    "~/Library/Saved Application State/org.hola.hola#{version.csv.first.major}e-nosdk~iosmac.savedState",
  ]
end
