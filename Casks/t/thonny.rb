cask "thonny" do
  arch arm: "arm64", intel: "x64"

  version "5.0.0"
  sha256 arm:   "cdaaef53d59580139c8c811bc5a2a9f4246e0cb9d194bce0a89f621889b29e7e",
         intel: "07a3b0f74f5159e0d3d5d78901fe726d408de38c8d7bddacca0f3c6aa6575997"

  url "https://github.com/thonny/thonny/releases/download/v#{version}/thonny-#{version}-#{arch}.pkg",
      verified: "github.com/thonny/thonny/"
  name "Thonny"
  desc "Python IDE for beginners"
  homepage "https://thonny.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  conflicts_with cask: "thonny-xxl"
  depends_on :macos

  pkg "thonny-#{version}-#{arch}.pkg"

  uninstall quit:    "org.thonny.Thonny",
            pkgutil: "org.thonny.Thonny.component",
            delete:  "/Applications/Thonny.app"

  zap trash: [
    "~/Library/Saved Application State/org.thonny.Thonny.savedState",
    "~/Library/Thonny",
  ]
end
