cask "thonny" do
  version "4.1.3"
  sha256 "01c9525d56457d76f4fa31745bfc4178f8182d7a5f08ada64c28fbbf9e79df56"

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
