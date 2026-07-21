cask "jamovi" do
  arch arm: "arm64", intel: "x64"

  version "2.7.38.0"
  sha256 arm:   "b694ec11eba6693586304b697d5a7ecfe7ae1e7295b6e84002f9da837a5d85fc",
         intel: "b1e9a1ae8dbee6bf1e56a3ad8e0c1d0a902c4dbd0ef969ff518f1e5a56cba6b5"

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
