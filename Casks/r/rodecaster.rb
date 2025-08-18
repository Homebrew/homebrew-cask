cask "rodecaster" do
  version "2.0.98"
  sha256 :no_check

  url "https://update.rode.com/rc-app/RODECaster_App_MACOS.zip"
  name "RODECaster App"
  desc "Easily manage your RØDECaster or Streamer X setup"
  homepage "https://rode.com/en/apps/rodecaster-app"

  livecheck do
    url "https://update.rode.com/rode-devices-manifest.json"
    strategy :json do |json|
      json.dig("rc-app-manifest", "macos", "main-version", "update-version")
    end
  end

  depends_on macos: ">= :catalina"

  rename "RØDECaster App*.pkg", "RØDECaster App.pkg"

  pkg "RØDECaster App.pkg"

  uninstall quit:    "com.rode.rodecastercomp",
            pkgutil: "com.rodecastercomp.installer"

  zap trash: [
    "~/Library/Caches/com.rode.rodecastercomp",
    "~/Library/HTTPStorages/com.rode.rodecastercomp",
  ]
end
