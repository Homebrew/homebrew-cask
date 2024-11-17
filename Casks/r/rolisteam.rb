cask "rolisteam" do
  version "1.9.3"
  sha256 "473c2f26e6a7d3892088f0b9da1b563d86aba1eaa1dd223a79ef1d8c27f18160"

  url "https://downloads.sourceforge.net/rolisteam/rolisteam_v#{version}_MacOs.dmg",
      verified: "downloads.sourceforge.net/rolisteam/"
  name "Rolisteam"
  desc "Virtual tabletop software"
  homepage "https://rolisteam.org/"

  app "rolisteam.app"

  zap trash: [
    "~/Library/Preferences/com.rolisteam.rolisteam*",
    "~/Library/Saved Application State/com.yourcompany.rolisteam.savedState",
  ]

  caveats do
    requires_rosetta
  end
end
