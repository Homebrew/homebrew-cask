cask "spyder" do
  arch arm: "arm64", intel: "x86_64"

  version "6.1.3"
  sha256 arm:   "67e0692d0f21911729528f23ace34126e45e5729a772e84af8feb880c6c8607f",
         intel: "f94dba6ef66663e7caea0cf39618da111b5522f516c6e0138aaa4793083fb383"

  url "https://github.com/spyder-ide/spyder/releases/download/v#{version}/Spyder-macOS-#{arch}.pkg",
      verified: "github.com/spyder-ide/spyder/"
  name "Spyder"
  desc "Scientific Python IDE"
  homepage "https://www.spyder-ide.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
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
