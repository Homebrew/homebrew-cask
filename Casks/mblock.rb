cask "mblock" do
  version "5.3.5"
  sha256 "bf09a8a2ab497619d41f52459b4109917336a311032ea59ba78407176a5f09c5"

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
