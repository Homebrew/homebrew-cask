cask "jamovi" do
  arch arm: "arm64", intel: "x64"

  version "2.7.11.0"
  sha256 arm:   "40d8ec7ae119cbcc4afd2c95ddef1094734e164d61a99775eba9bf6bf74ba334",
         intel: "dc9631fe563891581be843d9ec89089612d78a86221f24fa4d8f23d425663790"

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
