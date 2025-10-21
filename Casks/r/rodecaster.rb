cask "rodecaster" do
  version "2.0.104"
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

  pkg "RØDECaster App.pkg"

  preflight do
    staged_path.glob("RØDECaster App*.pkg")&.first&.rename(staged_path/"RØDECaster App.pkg")
  end

  uninstall quit:    "com.rode.rodecastercomp",
            pkgutil: "com.rodecastercomp.installer"

  zap trash: [
    "~/Library/Caches/com.rode.rodecastercomp",
    "~/Library/HTTPStorages/com.rode.rodecastercomp",
  ]
end
