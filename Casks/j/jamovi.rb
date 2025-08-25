cask "jamovi" do
  arch arm: "arm64", intel: "x64"

  version "2.7.6.0"
  sha256 arm:   "5a80b951090a280ef3595c39d8337b29c008ac48ec941149e1ee59ee023ed4bc",
         intel: "f40251199cae065d84b15ec2009e72a705dc307a32eb047433ae72b48265c589"

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
