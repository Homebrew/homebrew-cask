cask "medibangpaintpro" do
  version "28.4"
  sha256 "4d331e849993428d85520d5d7275de8e1c1de62b06b0e885cc3fd97d3f758326"

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
