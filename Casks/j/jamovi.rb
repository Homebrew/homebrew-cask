cask "jamovi" do
  arch arm: "arm64", intel: "x64"

  version "2.7.1.0"
  sha256 arm:   "bcbf45b047c7033de26a5059fdc495288bc581a1fa93526252a5bed90eb24e83",
         intel: "d76a2bbd1e4bfada14e0a1c7183624c532cb6c83fdd570c6bd377f03dd874ead"

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
