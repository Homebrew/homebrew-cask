cask "medibangpaintpro" do
  version "28.2"
  sha256 "fb66ff79ce0437d8ee4a6395f65ac91bbdb72a74f17f5bf12851897a342e6d61"

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
