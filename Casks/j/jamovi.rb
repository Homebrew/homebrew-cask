cask "jamovi" do
  arch arm: "arm64", intel: "x64"

  version "2.7.3.0"
  sha256 arm:   "5dde8a64058cd1a9f8f0f8ce6ed16e9bc99a1c4c62a7498858fdb06f64a605d8",
         intel: "2133fc79b476a0a928fb49b4915b1a0d453068fdcb5fb3a94eedb0fc540cd1b8"

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
