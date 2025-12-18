cask "spyder" do
  arch arm: "arm64", intel: "x86_64"

  version "6.1.2"
  sha256 arm:   "19bb2b9bbde0d0263cabf3ff787f22aaf0a6e4b0d37cc75ab6aaf65da3e626a9",
         intel: "3ff4eeb626f29b129960c77eee528785dfec66a23a334ce71b7c450eb9a4cd66"

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
              "/Applications/Spyder #{version.major} Uninstaller.app",
              "/Applications/Spyder #{version.major}.app",
              "/Library/spyder-#{version.major}",
            ]

  zap trash: [
    "~/.spyder-py3",
    "~/Library/Application Support/Spyder",
    "~/Library/Caches/Spyder",
    "~/Library/Saved Application State/org.spyder-ide.Spyder.savedState",
  ]
end
