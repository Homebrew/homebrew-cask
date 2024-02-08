cask "thonny" do
  version "4.1.4"
  sha256 "3acf16c0111fbecf351bd0c9d15e7cc0db06578699dac930ac3f9de19c6b0c8d"

  url "https://github.com/thonny/thonny/releases/download/v#{version}/thonny-#{version}.pkg",
      verified: "github.com/thonny/thonny/"
  name "Thonny"
  desc "Python IDE for beginners"
  homepage "https://thonny.org/"

  livecheck do
    url "https://github.com/thonny/thonny/releases/"
    regex(/thonny[._-]?(\d+(?:\.\d+)*)\.pkg/i)
    strategy :page_match
  end

  conflicts_with cask: "thonny-xxl"

  pkg "thonny-#{version}.pkg"

  uninstall quit:    "org.thonny.Thonny",
            pkgutil: "org.thonny.Thonny.component",
            delete:  "/Applications/Thonny.app"

  zap trash: [
    "~/Library/Saved Application State/org.thonny.Thonny.savedState",
    "~/Library/Thonny",
  ]
end
