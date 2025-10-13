cask "jamovi" do
  arch arm: "arm64", intel: "x64"

  version "2.7.7.0"
  sha256 arm:   "3932d0b1b304a95adbe97ad8860930cd954c93a8a96da70800ac83593eb100d5",
         intel: "07a92a042d49a6b51d38412eee55419f6b9c4b180411fd8c7ef056e78364204c"

  url "https://www.jamovi.org/downloads/jamovi-#{version}-macos-#{arch}.dmg"
  name "jamovi"
  desc "Statistical software"
  homepage "https://www.jamovi.org/"

  livecheck do
    url "https://www.jamovi.org/download.html"
    regex(/href=.*?jamovi[._-]v?(\d+(?:\.\d+)+)[._-]macos[._-]#{arch}\.dmg/i)
  end

  auto_updates true

  app "jamovi.app"

  zap trash: [
    "~/Library/Application Support/jamovi",
    "~/Library/Logs/jamovi",
    "~/Library/Preferences/org.jamovi.jamovi.plist",
    "~/Library/Saved Application State/org.jamovi.jamovi.savedState",
  ]
end
