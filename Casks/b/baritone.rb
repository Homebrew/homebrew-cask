cask "baritone" do
  version "1.0.9"
  sha256 "dc8eff4202b78e7bf0405b26223cb6e1892257a76af40581cc64f775ab2ca253"

  url "https://github.com/tma02/baritone/releases/download/v#{version}/Baritone-macOS.zip",
      verified: "github.com/tma02/baritone/"
  name "Baritone"
  desc "Spotify controls that live in the menu bar"
  homepage "https://tma02.github.io/baritone/"

  app "Baritone-darwin-x64/Baritone.app"

  caveats do
    requires_rosetta
  end
end
