cask "snip" do
  version "2.0_5771"
  sha256 "2e9c2863d4412dbfa1323c1f2cb056c6a81b77d520c8b2a732cade1e7b40df00"

  url "https://snip.qq.com/resources/Snip_V#{version}.dmg"
  appcast "https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://snip.qq.com/download"
  name "Snip"
  homepage "https://snip.qq.com/"

  pkg "Snip_V#{version.sub(/^(\d+\.\d+).*/, '\1')}.pkg"

  uninstall quit:    "com.tencent.snip",
            pkgutil: "com.tencent.snip.Snip.pkg"
end
