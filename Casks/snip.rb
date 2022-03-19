cask "snip" do
  version "2.0,5771"
  sha256 "2e9c2863d4412dbfa1323c1f2cb056c6a81b77d520c8b2a732cade1e7b40df00"

  url "https://snip.qq.com/resources/Snip_V#{version.csv.first}_#{version.csv.second}.dmg"
  name "Snip"
  homepage "https://snip.qq.com/"

  livecheck do
    url "https://snip.qq.com/download"
    strategy :header_match do |headers|
      match = headers["location"].match(/_V(\d+(?:\.\d+)*)_(\d+).dmg/)
      next if match.blank?

      "#{match[1]},#{match[2]}"
    end
  end

  pkg "Snip_V#{version.sub(/^(\d+\.\d+).*/, '\1')}.pkg"

  uninstall quit:    [
    "com.tencent.snip",
  ],
            pkgutil: "com.tencent.snip.Snip.pkg"
end
