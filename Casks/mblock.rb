cask "mblock" do
  version "5.4.0"
  sha256 "cdaae703059821efb8806ce3e6fc9b44d74c5975d67fefb0d2e626565f8d6452"

  url "https://dl.makeblock.com/mblock#{version.major}/darwin/V#{version}.pkg",
      verified: "dl.makeblock.com/"
  name "mBlock"
  desc "Coding tool designed for teaching STEAM"
  homepage "https://www.mblock.cc/"

  livecheck do
    url "https://mblock.makeblock.com/en-us/download/"
    regex(/href=.*?V?(\d+(?:\.\d+)+)\.pkg/i)
  end

  depends_on macos: ">= :sierra"

  pkg "V#{version}.pkg"

  uninstall pkgutil: [
    "cc.mblock",
    "com.makeblock.pkg.mblock",
  ]
end
