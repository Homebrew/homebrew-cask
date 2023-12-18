cask "shureplus-motiv" do
  version "1.5.3"
  sha256 "1536813a3d23f9bd7e3f707f77dc3561210467ab904748a821b793cc24be4d1f"

  url "https://content-files.shure.com/Software/shure_plus_motiv_desktop/#{version.dots_to_hyphens}/MOTIV-Desktop-mac-#{version}.dmg"
  name "ShurePlus MOTIV"
  desc "Additional features and controls for Shure MV7 and MV88+ microphones"
  homepage "https://www.shure.com/en-US/products/software/shure_plus_motiv_desktop"

  livecheck do
    url "https://www.shure.com/en-US/support/downloads/software-firmware-archive/shure_plus_motiv_desktop"
    regex(/<span\sclass="firmware__version">\n?\t+?(\d+(?:\.\d+)+)/i)
  end

  app "ShurePlus MOTIV.app"

  uninstall quit: "com.shure.motiv.desktop"

  zap trash: [
    "~/Library/Application Support/ShurePlus MOTIV",
    "~/Library/Logs/ShurePlus MOTIV",
    "~/Library/Saved Application State/com.shure.motiv.desktop.savedState",
  ]
end
