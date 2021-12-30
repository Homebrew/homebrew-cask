cask "memory-map" do
  version "1.7.1-18"
  sha256 "b12e2c3d42905d24c43aff6a19895d16ec145e2d8dc378f1b609371f3ca5b0b6"

  url "https://memory-map.com/download/mac/Memory-Map.#{version}.pkg"
  name "Memory-Map"
  desc "GPS navigation software"
  homepage "https://memory-map.com/"

  livecheck do
    url "https://memory-map.com/downloads/"
    regex(%r{href=.*?/Memory-Map\.(\d+(?:\.\d+)*-\d+)\.pkg}i)
  end

  depends_on macos: ">= :mojave"

  pkg "Memory-Map.#{version}.pkg"

  uninstall pkgutil: "com.memory-map.pkg.macapp"
end
