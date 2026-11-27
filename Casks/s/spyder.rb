cask "spyder" do
  arch arm: "arm64", intel: "x86_64"

  version "6.1.9"
  sha256 arm:   "9ef34b4849908a628bf2cdcf56efcb16bcb7e543c830a133821675bae88a0824",
         intel: "6914d698a44708c6b570c18a474465d690c3f70a1d3790d6211452cb7710616b"

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
