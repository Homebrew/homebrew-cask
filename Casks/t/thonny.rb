cask "thonny" do
  arch arm: "arm64", intel: "x64"

  version "5.0.1"
  sha256 arm:   "d82bcac04b9e010695fbc7a7d176188a5aa731bdcff163f4d3d7a32c6beefe50",
         intel: "1bb31ae9fe48c712980e57b0353a051c6e2615ba2cebc164179db134588ac033"

  url "https://github.com/thonny/thonny/releases/download/v#{version}/thonny-#{version}-#{arch}.pkg"
  name "Thonny"
  desc "Python IDE for beginners"
  homepage "https://thonny.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

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
