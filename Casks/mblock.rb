cask "mblock" do
  version "5.3.0"
  sha256 "c90258346b41ff399484552fccd6a836af0cae31a113ba97063c8260b02b436d"

  url "https://dl.makeblock.com/mblock#{version.major}/darwin/V#{version}.pkg",
      verified: "dl.makeblock.com/"
  name "mBlock"
  desc "Coding tool designed for teaching STEAM"
  homepage "https://www.mblock.cc/"

  livecheck do
    url "https://mblock.makeblock.com/en-us/download/"
    strategy :page_match
    regex(%r{href=.*?/darwin/V(\d+(?:\.\d+)*)\.pkg}i)
  end

  depends_on macos: ">= :sierra"

  pkg "V#{version}.pkg"

  uninstall pkgutil: [
    "cc.mblock",
    "com.makeblock.pkg.mblock",
  ]
end
