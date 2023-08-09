cask "medibangpaintpro" do
  version "28.7"
  sha256 "bbd4a9e3fea5b84547a7158893488a8f0f35148dd9fe87035baea78edfd475b8"

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
