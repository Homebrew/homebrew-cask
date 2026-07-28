cask "jamovi" do
  arch arm: "arm64", intel: "x64"

  version "28.1.0.0"
  sha256 arm:   "7ddc89c1d23afed46b6a5df8026bca100f48bdf66f836c8c1253f103366edb07",
         intel: "74dcaf3ecd3eac518d4eb3a2c7adbf0de407d7142f9b75af627a45dde0a3c079"

  url "https://www.jamovi.org/downloads/jamovi-#{version}-macos-#{arch}.dmg",
      referer: "https://www.jamovi.org/download.html"
  name "jamovi"
  desc "Statistical software"
  homepage "https://www.jamovi.org/"

  # The download page will redirect to the homepage unless a `referer` is used.
  livecheck do
    url "https://www.jamovi.org/download.html",
        referer: "https://www.jamovi.org/"
    regex(/href=.*?jamovi[._-]v?(\d+(?:\.\d+)+)[._-]macos[._-]#{arch}\.dmg/i)
  end

  auto_updates true
  depends_on macos: :monterey

  app "jamovi.app"

  zap trash: [
    "~/Library/Application Support/jamovi",
    "~/Library/Logs/jamovi",
    "~/Library/Preferences/org.jamovi.jamovi.plist",
    "~/Library/Saved Application State/org.jamovi.jamovi.savedState",
  ]
end
