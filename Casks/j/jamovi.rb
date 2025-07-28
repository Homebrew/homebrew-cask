cask "jamovi" do
  arch arm: "arm64", intel: "x64"

  version "2.7.2.0"
  sha256 arm:   "4cc794b0bbe45ff9537b2ce491d1beae5daa43e554e1fa10b47442f2415ae702",
         intel: "3b5c6af1baa22907a81d87d8c9d48a957e4707fa6e0525102e3e876255349e5d"

  url "https://www.jamovi.org/downloads/jamovi-#{version}-macos-#{arch}.dmg"
  name "jamovi"
  desc "Statistical software"
  homepage "https://www.jamovi.org/"

  livecheck do
    url "https://www.jamovi.org/download.html"
    regex(/href=.*?jamovi[._-]v?(\d+(?:\.\d+)+)[._-]macos[._-]#{arch}\.dmg/i)
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "jamovi.app"

  zap trash: [
    "~/Library/Application Support/jamovi",
    "~/Library/Logs/jamovi",
    "~/Library/Preferences/org.jamovi.jamovi.plist",
    "~/Library/Saved Application State/org.jamovi.jamovi.savedState",
  ]
end
