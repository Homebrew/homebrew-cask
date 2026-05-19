cask "jamovi" do
  arch arm: "arm64", intel: "x64"

  version "2.7.30.0"
  sha256 arm:   "5236e35f00de64e139ff2d3a65dde4cfcdb25554fa6ad1708112ce8a2a5e6183",
         intel: "eac87d549ce3b966f3cf59f6c5b0c2892ad1b0f3f0c38db37aa9e86f12cb3641"

  url "https://www.jamovi.org/downloads/jamovi-#{version}-macos-#{arch}.dmg",
      referer: "https://www.jamovi.org/download.html"
  name "jamovi"
  desc "Statistical software"
  homepage "https://www.jamovi.org/"

  # The download page will redirect to the homepage unless a `referer` is used.
  livecheck do
    url "https://www.jamovi.org/download.html",
        referer: "https://www.jamovi.org"
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
