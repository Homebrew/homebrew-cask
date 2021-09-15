cask "holavpn" do
  version "1.0.39,1.187.903"
  sha256 "0c004b29b1b03c402c1e12ddcbe30c48f1ffaddd2f1318f607e2f0077a17cd64"

  url "https://cdn4.hola.org/static/HolaVPN-#{version.before_comma}-#{version.after_comma}.dmg"
  name "Hola VPN"
  desc "Peer-to-peer VPN"
  homepage "https://hola.org/"

  livecheck do
    url "https://hola.org/download"
    strategy :page_match do |page|
      page.scan(/href=.*?HolaVPN[._-]v?(\d+(?:\.\d+)+)[_-](\d+(?:\.\d+)+)\.dmg/i).map do |match|
        "#{match[0]},#{match[1]}"
      end
    end
  end

  depends_on macos: ">= :el_capitan"

  app "HolaVPN.app"
end
