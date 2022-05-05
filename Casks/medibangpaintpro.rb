cask "medibangpaintpro" do
  version "28.0"
  sha256 "d9d6bd4e8807f96958413743f06a14521aec09500d7a1d66b5ee17c6fd4a5998"

  url "https://medibangpaint.com/static/installer/MediBangPaintPro/MediBangPaintPro-#{version}.dmg"
  name "MediBang Paint Pro"
  desc "Create digital art and comics"
  homepage "https://medibangpaint.com/en/pc/"

  livecheck do
    url "https://medibangpaint.com/en/app-download/"
    regex(%r{href=.*?/MediBangPaintPro-(\d+(?:\.\d+)*)\.dmg}i)
  end

  app "MediBangPaintPro.app"

  zap trash: [
    "~/Library/Application Support/Medibang",
    "~/Library/Application Support/CloudDocs/session/containers/iCloud.com.medibang.MediBangPaintTablet.plist",
    "~/Library/Application Support/CloudDocs/session/containers/iCloud.com.medibang.MediBangPaintTablet",
    "~/Library/Preferences/com.medibang.cloudalpaca.plist",
    "~/Library/Saved Application State/com.medibang.cloudalpaca.savedState",
  ]
end
