cask "holavpn" do
  version "2.78,1.205.171"
  sha256 "f44a10c0c64a846398ae86beb8a463a713b2d968c9f9f815b1f22d544776ca38"

  url "https://cdn4.hola.org/static/HolaVPN#{version.csv.first.major}E-#{version.csv.first}-#{version.csv.second}.dmg"
  name "Hola VPN"
  desc "Peer-to-peer VPN"
  homepage "https://hola.org/"

  livecheck do
    url "https://hola.org/download"
    strategy :page_match do |page|
      page.scan(/href=.*?HolaVPN#{version.csv.first.major}E[._-]v?(\d+(?:\.\d+)+)[_-](\d+(?:\.\d+)+)\.dmg/i).map do |match|
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
