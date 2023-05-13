cask "elgato-control-center" do
  version "1.4.1.10463"
  sha256 "8811db60de8a8865f5253d3c7827a47031616410d92450fb9b6b83deea6dcc0b"

  url "https://edge.elgato.com/egc/macos/eccm/#{version.major_minor_patch.chomp(".0")}/ControlCenterMac-#{version}.app.zip"
  name "Elgato Control Center"
  desc "Control your Elgato Key Lights"
  homepage "https://www.elgato.com/en/gaming/key-light"

  livecheck do
    url "https://www.elgato.com/sites/default/files/downloads.json"
    regex(%r{"downloadURL"\s*:\s*"[^"]*?/ControlCenterMac[._-]v?(\d+(?:[._]\d+)+)\.app\.zip"}i)
  end

  depends_on macos: ">= :mojave"

  app "Elgato Control Center.app"

  uninstall quit: "com.corsair.ControlCenter"

  zap trash: [
    "~/Library/Application Scripts/com.corsair.ControlCenterLauncher",
    "~/Library/Application Support/com.corsair.ControlCenter",
    "~/Library/Caches/com.corsair.ControlCenter",
    "~/Library/Caches/com.plausiblelabs.crashreporter.data/com.corsair.ControlCenter",
    "~/Library/Containers/com.corsair.ControlCenterLauncher",
    "~/Library/Preferences/com.corsair.ControlCenter.plist",
  ]
end
