cask "medibangpaintpro" do
  version "25.4"
  sha256 "217782a71e83a696be802b64c8ce878f90812d9dd8b6c6df1664a58a682eebb5"

  url "https://medibangpaint.com/static/installer/MediBangPaintPro/MediBangPaintPro-#{version}.dmg"
  name "MediBang Paint Pro"
  desc "Create digital art and comics"
  homepage "https://medibangpaint.com/en/pc/"

  app "MediBangPaintPro.app"

  zap trash: [
    "~/Library/Preferences/com.medibang.cloudalpaca.plist",
    "~/Library/Saved Application State/com.medibang.cloudalpaca.savedState",
  ]
end
