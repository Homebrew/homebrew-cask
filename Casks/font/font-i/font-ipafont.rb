cask "font-ipafont" do
  version "003.03"
  sha256 "f755ed79a4b8e715bed2f05a189172138aedf93db0f465b4e20c344a02766fe5"

  url "https://moji.or.jp/wp-content/ipafont/IPAfont/IPAfont#{version.no_dots}.zip"
  name "IPA Fonts"
  homepage "https://moji.or.jp/ipafont/"

  livecheck do
    url :homepage
    regex(/IPAフォント\(\s*Ver[._-](\d+(?:\.\d+)+)\s*\)/i)
  end

  font "IPAfont#{version.no_dots}/ipag.ttf"
  font "IPAfont#{version.no_dots}/ipagp.ttf"
  font "IPAfont#{version.no_dots}/ipam.ttf"
  font "IPAfont#{version.no_dots}/ipamp.ttf"

  # No zap stanza required
end
