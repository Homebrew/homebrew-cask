cask "jamovi" do
  arch arm: "arm64", intel: "x64"

  version "2.7.12.0"
  sha256 arm:   "2dc3101052113ee85dd464df4243f9bc263c0e6066f0e454f2326a3e7bbf9060",
         intel: "ee9edd5977a4e78668415e7cef71241c4028f40e62fd3b16247cdfba82de5434"

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
