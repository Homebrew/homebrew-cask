cask "jamovi" do
  version "1.8.4.0"
  sha256 "5fe2a831b33490767fdc92d55a31b42f92fb1b4e52ed8311b07fcc0dcfac162a"

  url "https://www.jamovi.org/downloads/jamovi-#{version}-macos.dmg"
  name "jamovi"
  desc "Statistical software"
  homepage "https://www.jamovi.org/"

  livecheck do
    url "https://www.jamovi.org/download.html"
    regex(%r{href=.*?/jamovi[._-]v?(\d+(?:\.\d+)+)[._-]macos\.dmg}i)
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
