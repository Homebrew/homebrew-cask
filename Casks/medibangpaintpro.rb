cask "medibangpaintpro" do
  version "28.6"
  sha256 "f04556ff99231d2acefe2b176e948a9d791d9424d9864dda6f060cdee67d233f"

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
