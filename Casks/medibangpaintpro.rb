cask "medibangpaintpro" do
  version "26.2"
  sha256 "d53fc36e02e3d9b77f3dd3c620f53452712aad4cdb6748b933e41a2b05d06a05"

  url "https://medibangpaint.com/static/installer/MediBangPaintPro/MediBangPaintPro-#{version}.dmg"
  name "MediBang Paint Pro"
  desc "Create digital art and comics"
  homepage "https://medibangpaint.com/en/pc/"

  livecheck do
    url "https://medibangpaint.com/en/app-download/"
    strategy :page_match
    regex(%r{href=.*?/MediBangPaintPro-(\d+(?:\.\d+)*)\.dmg}i)
  end

  app "MediBangPaintPro.app"

  zap trash: [
    "~/Library/Preferences/com.medibang.cloudalpaca.plist",
    "~/Library/Saved Application State/com.medibang.cloudalpaca.savedState",
  ]
end
