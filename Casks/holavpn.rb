cask "holavpn" do
  version "1.0.28,1.185.590"
  sha256 "36a8417fdb5cd255eed9bc965c9c73fcbbd480b1fcd44625b4c321be80c61be4"

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
