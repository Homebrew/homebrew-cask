cask "jamovi" do
  version "2.2.4.0"
  sha256 "1ff4d1ce7da6a9120572c5842ed2ddf57c61cf0a93a564003394a1793ef48557"

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
