cask "jamovi" do
  arch arm: "arm64", intel: "x64"

  version "2.7.17.0"
  sha256 arm:   "22a55e3d9becd5cd8cca0d302689df848f579fc052a49cfc77385848f95b9e72",
         intel: "cc8301aa3f8017d4d951ff0af729fbab141f4749db011fd7955f9b3127146b82"

  url "https://www.jamovi.org/downloads/jamovi-#{version}-macos-#{arch}.dmg"
  name "jamovi"
  desc "Statistical software"
  homepage "https://www.jamovi.org/"

  livecheck do
    url "https://www.jamovi.org/download.html"
    regex(/href=.*?jamovi[._-]v?(\d+(?:\.\d+)+)[._-]macos[._-]#{arch}\.dmg/i)
  end

  auto_updates true
  depends_on macos: ">= :monterey"

  app "jamovi.app"

  zap trash: [
    "~/Library/Application Support/jamovi",
    "~/Library/Logs/jamovi",
    "~/Library/Preferences/org.jamovi.jamovi.plist",
    "~/Library/Saved Application State/org.jamovi.jamovi.savedState",
  ]
end
