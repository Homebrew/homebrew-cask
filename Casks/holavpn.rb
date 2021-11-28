cask "holavpn" do
  version "2.39,1.190.697"
  sha256 "e24b3b92d08cd515413da9161e25761a5c7ff5682f864806568be0891eb4e205"

  url "https://cdn4.hola.org/static/HolaVPN#{version.before_comma.major}E-#{version.before_comma}-#{version.after_comma}-noc.dmg"
  name "Hola VPN"
  desc "Peer-to-peer VPN"
  homepage "https://hola.org/"

  livecheck do
    url "https://hola.org/download"
    strategy :page_match do |page|
      page.scan(/href=.*?HolaVPN#{version.before_comma.major}E[._-]v?(\d+(?:\.\d+)+)[_-](\d+(?:\.\d+)+)-noc\.dmg/i).map do |match|
        "#{match[0]},#{match[1]}"
      end
    end
  end

  depends_on macos: ">= :catalina"

  app "HolaVPN#{version.before_comma.major}E.app"

  zap trash: [
    "~/Documents/holavpn#{version.before_comma.major}e.db*",
    "~/Library/Caches/org.hola.hola#{version.before_comma.major}e-nosdk",
    "~/Library/Preferences/org.hola.hola#{version.before_comma.major}e-nosdk.plist",
    "~/Library/Saved Application State/org.hola.hola#{version.before_comma.major}e-nosdk~iosmac.savedState",
  ]
end
