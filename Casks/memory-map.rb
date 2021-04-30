cask "memory-map" do
  version "1.7-15"
  sha256 "60a586d88d9d8746a35531b912d5e236104c49b1e5bb4896aed4db7a76340e56"

  url "https://memory-map.com/download/mac/Memory-Map.#{version}.pkg"
  name "Memory-Map"
  homepage "https://memory-map.com/"

  livecheck do
    url "https://memory-map.com/Mapping_Software_Downloads.html"
    strategy :page_match
    regex(%r{href=.*?/Memory-Map\.(\d+(?:\.\d+)*-\d+)\.pkg}i)
  end

  pkg "Memory-Map.#{version}.pkg"

  uninstall pkgutil: "com.memory-map.pkg.macapp"
end
