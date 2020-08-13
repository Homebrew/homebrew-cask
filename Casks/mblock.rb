cask "mblock" do
  version "5.2.0"
  sha256 "8a90d4e341b73adff1ff6db704426b6c343e5d2786f8183f5c52ec0240103abf"

  # dl.makeblock.com/ was verified as official when first introduced to the cask
  url "https://dl.makeblock.com/mblock#{version.major}/darwin/V#{version}.pkg"
  appcast "https://www.mblock.cc/releaselogs-mblock5/"
  name "mBlock"
  homepage "https://www.mblock.cc/"

  pkg "V#{version}.pkg"

  uninstall pkgutil: "com.makeblock.pkg.mblock"
end
