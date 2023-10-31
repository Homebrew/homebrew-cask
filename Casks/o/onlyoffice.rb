cask "onlyoffice" do
  arch arm: "arm", intel: "x86_64"

  version "7.5.1"
  sha256 arm:   "79e556575e5b78e197a9391f218d0a61abefc89f647dd0cfc38ec5ed92f24854",
         intel: "62b2cdf1b02e550f6f41407dfa07d325628b746eefec021e795ec3c189feefed"

  url "https://github.com/ONLYOFFICE/DesktopEditors/releases/download/v#{version}/ONLYOFFICE-#{arch}.dmg",
      verified: "github.com/ONLYOFFICE/DesktopEditors/"
  name "ONLYOFFICE"
  desc "Document editor"
  homepage "https://www.onlyoffice.com/"

  livecheck do
    url :url
    regex(/(\d+(?:\.\d+)+)/i)
    strategy :github_latest
  end

  auto_updates true

  app "ONLYOFFICE.app"

  zap trash: [
    "~/Library/Application Support/asc.onlyoffice.ONLYOFFICE",
    "~/Library/Preferences/asc.onlyoffice.ONLYOFFICE.plist",
    "~/Library/Preferences/asc.onlyoffice.editors-helper-renderer.plist",
  ]
end
