cask "jamovi" do
  arch arm: "arm64", intel: "x64"

  version "2.7.9.0"
  sha256 arm:   "15594f76d14a5b2c92f898a8e86c6efba40cb5b74af8b1f6a47ca36ce3cf9b69",
         intel: "d8ceb775b5c39c67267096a58dd75354907d3d37ec61600dd817573ee6d35356"

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
