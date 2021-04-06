cask "medibangpaintpro" do
  version "26.1"
  sha256 "7004726fa40274922fd981ad2e3cfcf67fe5d7d81073c1fca3e3640884672205"

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
