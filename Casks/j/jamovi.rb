cask "jamovi" do
  arch arm: "arm64", intel: "x64"

  version "2.7.31.0"
  sha256 arm:   "d4b4cdde56616eea9aa28198ac891727ff1adc5b37ce1730b82dfaa827a6f69e",
         intel: "e3ae78d57de912dab5915352372b6ed797a1c2bc0ce1eb73a5c6aae44ad0de64"

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
