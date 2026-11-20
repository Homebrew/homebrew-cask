cask "spyder" do
  arch arm: "arm64", intel: "x86_64"

  version "6.1.8"
  sha256 arm:   "d65b90baee112c4b3b219787c9ec531e24328b47c7b5428cecdb978d66ca9293",
         intel: "be8cbcce1b03fa1a66e126b3c07c0847699d1175b5dc89a93a4f44c946420e09"

  url "https://github.com/spyder-ide/spyder/releases/download/v#{version}/Spyder-macOS-#{arch}.pkg"
  name "Spyder"
  desc "Scientific Python IDE"
  homepage "https://www.spyder-ide.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on :macos

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
