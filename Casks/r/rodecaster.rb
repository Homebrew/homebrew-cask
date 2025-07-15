cask "rodecaster" do
  version "2.0.94-145"
  sha256 :no_check

  url "https://update.rode.com/rc-app/RODECaster_App_MACOS.zip"
  name "RODECaster App"
  desc "Easily manage your RØDECaster or Streamer X setup"
  homepage "https://rode.com/en/apps/rodecaster-app"

  depends_on macos: ">= :catalina"

  pkg "RØDECaster App (#{version}).pkg"

  uninstall quit:    "com.rode.rodecastercomp",
            pkgutil: "com.rodecastercomp.installer"

  zap trash: [
    "~/Library/Caches/com.rode.rodecastercomp",
    "~/Library/HTTPStorages/com.rode.rodecastercomp",
  ]
end
