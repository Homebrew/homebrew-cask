cask "memory-map" do
  version "1.6-12"
  sha256 "53e34e1e8d0e83356c26c861efcfdb56bcb365093f31e36de46fbb07bfb55b99"

  url "https://memory-map.com/download/mac/Memory-Map.#{version}.pkg"
  appcast "https://memory-map.com/Mapping_Software_Downloads.html"
  name "Memory-Map"
  homepage "https://memory-map.com/"

  pkg "Memory-Map.#{version}.pkg"

  uninstall pkgutil: "com.memory-map.pkg.macapp"
end
