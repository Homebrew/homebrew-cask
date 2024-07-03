cask "shureplus-motiv" do
  version "1.5.4"
  sha256 "df52cd040a1485046f65228768e3cc3b2c25a0a40520f34c37c8a1c2a5028843"

  url "https://content-files.shure.com/Software/shure_plus_motiv_desktop/#{version.dots_to_hyphens}/MOTIV-Desktop-macOS-#{version}.dmg"
  name "ShurePlus MOTIV"
  desc "Additional features and controls for Shure MV7 and MV88+ microphones"
  homepage "https://www.shure.com/en-US/products/software/shure_plus_motiv_desktop"

  livecheck do
    url "https://www.shure.com/en-US/support/downloads/software-firmware-archive/shure_plus_motiv_desktop"
    regex(/href=.*MOTIV[._-]Desktop[._-]macOS[._-]v?(\d+(?:\.\d+)+)\.dmg/i)
  end

  app "ShurePlus MOTIV.app"

  uninstall quit: "com.shure.motiv.desktop"

  zap trash: [
    "~/Library/Application Support/ShurePlus MOTIV",
    "~/Library/Logs/ShurePlus MOTIV",
    "~/Library/Saved Application State/com.shure.motiv.desktop.savedState",
  ]

  caveats do
    requires_rosetta
  end
end
