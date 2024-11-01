cask "spyder" do
  arch arm: "arm64", intel: "x86_64"

  version "6.0.2"
  sha256 arm:   "d4cdb48ff1eb19c4576f8bb8eaa6ed540189d182babf9581ff67fa8216c5ffb3",
         intel: "283a43e25d7c86bcb5a16aaad46142a6a4340b6cd20fd84d81332f6de8d6b3f4"

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

  uninstall quit:    "org.spyder-ide.Spyder",
            pkgutil: "org.spyder-ide.Spyder.pkg*",
            delete:  "/Applications/Spyder #{version.major}.app"

  zap trash: [
    "~/.spyder-py3",
    "~/Library/Application Support/Spyder",
    "~/Library/Caches/Spyder",
    "~/Library/Saved Application State/org.spyder-ide.Spyder.savedState",
  ]
end
