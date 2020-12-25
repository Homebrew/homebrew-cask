cask "mblock" do
  version "5.3.0"
  sha256 "e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855"

  url "https://dl.makeblock.com/mblock#{version.major}/darwin/V#{version}.pkg",
      verified: "dl.makeblock.com/"
  appcast "https://www.mblock.cc/releaselogs-mblock5/"
  name "mBlock"
  homepage "https://www.mblock.cc/"

  pkg "V#{version}.pkg"

  uninstall pkgutil: "com.makeblock.pkg.mblock"
end
