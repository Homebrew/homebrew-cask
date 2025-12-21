cask "jamovi" do
  arch arm: "arm64", intel: "x64"

  version "2.7.15.0"
  sha256 arm:   "f31e6be0f1bf080d4ed4b85fab713b7d0057911e236f3c0df3528b3350bc8fa4",
         intel: "a01d44fa281fc1a4f31f60755f85c1b9ed523bad23383ab283e823d29edc480e"

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
