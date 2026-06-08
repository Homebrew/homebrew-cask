cask "font-ipaexfont" do
  version "004.01"
  sha256 "bcf8374ab3f9672c421120430dd19a51c99f5265cf06fc340d9a661ddfd7974b"

  url "https://moji.or.jp/wp-content/ipafont/IPAexfont/IPAexfont#{version.no_dots}.zip"
  name "IPAex Fonts"
  homepage "https://moji.or.jp/ipafont/"

  livecheck do
    url :homepage
    regex(/IPAexフォント\(\s*Ver[._-](\d+(?:\.\d+)+)\s*\)/i)
  end

  font "IPAexfont#{version.no_dots}/ipaexg.ttf"
  font "IPAexfont#{version.no_dots}/ipaexm.ttf"

  # No zap stanza required
end
