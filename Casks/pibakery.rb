cask "pibakery" do
  version "0.3.6"
  sha256 "f449bfe01806e4c4b30a8603c60c439ce94b579f237c471ffc3057abcf507642"

  url "https://github.com/davidferguson/pibakery/releases/download/v#{version}/PiBakery.pkg",
      verified: "github.com/davidferguson/"
  name "PiBakery"
  desc "Blocks-based setup tool for Raspberry Pi"
  homepage "https://www.pibakery.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  pkg "PiBakery.pkg"

  uninstall pkgutil: [
    "org.pibakery.pibakery.pkg",
    "org.pibakery.raspbian-full.pkg",
    "org.pibakery.raspbian-lite.pkg",
  ]
end
