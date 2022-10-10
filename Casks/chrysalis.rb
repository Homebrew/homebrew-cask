cask "chrysalis" do
  version "0.11.8"
  sha256 "ca3eecd45799ca9d25f62659732310800b0b303f593cbb5215eff69f38c56e53"

  url "https://github.com/keyboardio/Chrysalis/releases/download/v#{version}/Chrysalis-#{version}.dmg"
  name "Chrysalis"
  desc "Graphical configurator for Kaleidoscope-powered keyboards"
  homepage "https://github.com/keyboardio/Chrysalis"

  # This uses a regex that specifically matches versions from release tag links
  # for this repository only. A description for a previous release linked to a
  # tag in a different repository, which led to an incorrect version match.
  livecheck do
    url :url
    regex(%r{href=.*?/Chrysalis/releases/tag/v?(\d+(?:\.\d+)+)["' >]}i)
    strategy :github_latest
  end

  app "Chrysalis.app"

  zap trash: [
    "~/Library/Application Support/chrysalis",
    "~/Library/Preferences/keyboardio.chrysalis.plist",
  ]
end
