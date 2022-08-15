cask "jamovi" do
  version "2.3.15.0"
  sha256 "8d9541f33f5414f106a2c8da10cf883ea66caf8293afe9f32125894ad14cbf86"

  url "https://www.jamovi.org/downloads/jamovi-#{version}-macos.dmg"
  name "jamovi"
  desc "Statistical software"
  homepage "https://www.jamovi.org/"

  livecheck do
    url "https://www.jamovi.org/download.html"
    regex(/href=.*?jamovi[._-]v?(\d+(?:\.\d+)+)[._-]macos\.dmg/i)
  end

  auto_updates true

  app "jamovi.app"

  zap trash: [
    "~/Library/Application Support/jamovi/",
    "~/Library/Logs/jamovi",
    "~/Library/Preferences/org.jamovi.jamovi.plist",
    "~/Library/Saved Application State/org.jamovi.jamovi.savedState/",
  ]
end
