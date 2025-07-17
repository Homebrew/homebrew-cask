cask "jamovi" do
  arch arm: "arm64", intel: "x64"

  version "2.6.45.0"
  sha256 arm:   "497dfa01cd7f53289a86074cbbc8cc7d049ef17fe45b234f10d0eefb289d3a51",
         intel: "451368489841e00c28a43d7289043100f120cd9f8288761ee5a1118e2b968c13"

  url "https://www.jamovi.org/downloads/jamovi-#{version}-macos-#{arch}.dmg"
  name "jamovi"
  desc "Statistical software"
  homepage "https://www.jamovi.org/"

  livecheck do
    url "https://www.jamovi.org/download.html"
    regex(/href=.*?jamovi[._-]v?(\d+(?:\.\d+)+)[._-]macos[._-]#{arch}\.dmg/i)
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "jamovi.app"

  zap trash: [
    "~/Library/Application Support/jamovi",
    "~/Library/Logs/jamovi",
    "~/Library/Preferences/org.jamovi.jamovi.plist",
    "~/Library/Saved Application State/org.jamovi.jamovi.savedState",
  ]
end
