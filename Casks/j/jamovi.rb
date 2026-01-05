cask "jamovi" do
  arch arm: "arm64", intel: "x64"

  version "2.7.16.0"
  sha256 arm:   "aefd5ec2c6991df72fbe372acdd16eee913183f853498f078903b36e6641b383",
         intel: "92fd1ea3df8df2064757d61515b49d24cd2cba24617f534851bd61dbc4318809"

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
