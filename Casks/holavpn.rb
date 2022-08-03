cask "holavpn" do
  version "2.74,1.200.814"
  sha256 "25fe874e90963a143e27769b5514857326b82a223660bea2ad5873b7da434083"

  url "https://cdn4.hola.org/static/HolaVPN#{version.csv.first.major}E-#{version.csv.first}-#{version.csv.second}-noc.dmg"
  name "Hola VPN"
  desc "Peer-to-peer VPN"
  homepage "https://hola.org/"

  livecheck do
    url "https://hola.org/download"
    strategy :page_match do |page|
      page.scan(/href=.*?HolaVPN#{version.csv.first.major}E[._-]v?(\d+(?:\.\d+)+)[_-](\d+(?:\.\d+)+)-noc\.dmg/i).map do |match|
        "#{match[0]},#{match[1]}"
      end
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
