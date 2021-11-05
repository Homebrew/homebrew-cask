cask "camengine" do
  version "4.0.63.2,21102201"
  sha256 "e2c184fcb617c664c6407525c026bc30d73b8b6cccc6d9519568a848c3adafa6"

  url "https://storage.avermedia.com/web_release_www/software/AVerMedia_PW513_Firmware_0.0.8000.46_&_CamEngine_Mac_v#{version.before_comma}.zip"
  name "camengine"
  desc "App to unleash the potential of the Live Streamer CAM"
  homepage "https://www.avermedia.com/us/product-detail/PW513"

  pkg "Step2.CamEngineV4_v#{version.before_comma}_#{version.after_comma}.pkg"

  uninstall launchctl: "com.avermedia.camengineV4",
            pkgutil:   "com.avermedia.UninstallForCamV4",
            trash:     "/Applications/CamEngine4"
end
