cask "holavpn" do
  version "2.67,1.199.20"
  sha256 "2f4dc7f96092560647951ca1f11f18078f8ec3b4d8d7e20140b9ae7284a7256f"

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
