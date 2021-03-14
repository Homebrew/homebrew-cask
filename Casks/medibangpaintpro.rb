cask "medibangpaintpro" do
  version "26.0"
  sha256 "2704ba37b2944fcc8fdc78534b1f7217e08a224a67411f1c279be153ec5f156c"

  url "https://medibangpaint.com/static/installer/MediBangPaintPro/MediBangPaintPro-#{version}.dmg"
  appcast "https://medibangpaint.com/en/pc/releasenote/"
  name "MediBang Paint Pro"
  desc "Create digital art and comics"
  homepage "https://medibangpaint.com/en/pc/"

  app "MediBangPaintPro.app"

  zap trash: [
    "~/Library/Preferences/com.medibang.cloudalpaca.plist",
    "~/Library/Saved Application State/com.medibang.cloudalpaca.savedState",
  ]
end
