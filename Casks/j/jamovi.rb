cask "jamovi" do
  arch arm: "arm64", intel: "x64"

  version "2.7.13.0"
  sha256 arm:   "5f256a8e4585415f3a0dad7c850c817fc559a1e88c8c3cea399dc109a0951443",
         intel: "d7334cf3a97af221b402675eae56339114bf48df66f5196a539aeb878e5b68e7"

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
