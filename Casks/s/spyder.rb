cask "spyder" do
  arch arm: "arm64", intel: "x86_64"

  version "6.0.4"
  sha256 arm:   "315540acb8ae622f7ba4256be4c1398425b2160ddeb5e2f9e44fe9006358ad95",
         intel: "9a723d3a033bf480228fb4167549e9d33f214dfc9276c83dedbced5d5de86b5d"

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
