cask "chrysalis" do
  version "0.13.2"
  sha256 "696ebda9d8b70b59073cde6960fbb0b5b704329497e2a1a3022e8a2414f2e498"

  url "https://github.com/keyboardio/Chrysalis/releases/download/v#{version}/Chrysalis-#{version}-universal.dmg"
  name "Chrysalis"
  desc "Graphical configurator for Kaleidoscope-powered keyboards"
  homepage "https://github.com/keyboardio/Chrysalis"

  # This uses a regex that specifically matches versions from release tag links
  # for this repository only. A description for a previous release linked to a
  # tag in a different repository, which led to an incorrect version match.
  livecheck do
    url :url
    regex(/v?(\d+(?:\.\d+)+)/i)
    strategy :github_latest
  end

  app "Chrysalis.app"

  zap trash: [
    "~/Library/Application Support/chrysalis",
    "~/Library/Preferences/keyboardio.chrysalis.plist",
  ]
end
