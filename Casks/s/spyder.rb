cask "spyder" do
  arch arm: "arm64", intel: "x86_64"

  version "6.1.5"
  sha256 arm:   "6f25ce49c5421ab15a61081ab0036c251cdb9d061b0d53740092efc620e8a5f5",
         intel: "5383bbb1820bce214be94743ea219f98f99a033c55554f16065779146056d85c"

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
  depends_on macos: :big_sur

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
