cask "holavpn" do
  version "1.0.37,1.187.541"
  sha256 "12dc6efeae28f36ab86e05cf251f0068e46fe1db65c9031c7de099f83c433bb2"

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
