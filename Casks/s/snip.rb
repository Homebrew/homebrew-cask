cask "snip" do
  version "2.0,5771"
  sha256 "2e9c2863d4412dbfa1323c1f2cb056c6a81b77d520c8b2a732cade1e7b40df00"

  url "https://snip.qq.com/resources/Snip_V#{version.csv.first}_#{version.csv.second}.dmg"
  name "Snip"
  desc "Screen capture tool"
  homepage "https://snip.qq.com/"

  deprecate! date: "2023-12-17", because: :discontinued

  pkg "Snip_V#{version.sub(/^(\d+\.\d+).*/, '\1')}.pkg"

  uninstall quit:    "com.tencent.snip",
            pkgutil: "com.tencent.snip.Snip.pkg"
end
