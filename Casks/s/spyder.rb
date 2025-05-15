cask "spyder" do
  arch arm: "arm64", intel: "x86_64"

  version "6.0.6"
  sha256 arm:   "21dbd2578bde0da18150eb20881f91d3e3310d08f0d9d114bda1258f12711212",
         intel: "ac97d7e650c470913a63a66b7f9f3b888c42725da2811de3b6c4b8fb5e3026fb"

  url "https://github.com/spyder-ide/spyder/releases/download/v#{version}/Spyder-macOS-#{arch}.pkg",
      verified: "github.com/spyder-ide/spyder/"
  name "Spyder"
  desc "Scientific Python IDE"
  homepage "https://www.spyder-ide.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :big_sur"

  pkg "Spyder-macOS-#{arch}.pkg"

  uninstall quit:    "org.spyder-ide.Spyder-#{version.major}",
            pkgutil: "org.spyder-ide.Spyder.pkg*",
            delete:  [
              "/Applications/REQUIRED.app",
              "/Applications/Spyder #{version.major}.app",
            ]

  zap trash: [
    "~/.spyder-py3",
    "~/Library/Application Support/Spyder",
    "~/Library/Caches/Spyder",
    "~/Library/Saved Application State/org.spyder-ide.Spyder.savedState",
  ]
end
