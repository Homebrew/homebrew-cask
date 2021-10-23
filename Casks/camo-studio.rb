cask "camo-studio" do
  version "1.4.0,5539"
  sha256 "5cd8dd354adfc0ce80e63c503e1fc29c424df6608944703fe6ae95f83f326054"

  url "https://reincubate.com/res/labs/camo/CamoStudioMac-#{version.before_comma}-#{version.after_comma}-Release.app.zip"
  name "Camo Studio"
  desc "Use your phone as a high-quality webcam with image tuning controls"
  homepage "https://reincubate.com/camo/"

  livecheck do
    url "https://uds.reincubate.com/release-notes/camo/?format=sparkle"
    strategy :sparkle
  end

  auto_updates true

  app "Camo Studio.app"
  installer script: {
    executable:   "#{staged_path}/Camo Studio.app/Contents/MacOS/Camo Studio",
    args:         ["-install"],
    sudo:         true,
    must_succeed: false,
  }

  uninstall quit:   "com.reincubate.macos.cam",
            script: {
              executable:   "/Applications/Camo Studio.app/Contents/MacOS/Camo Studio",
              args:         ["-uninstall"],
              sudo:         true,
              must_succeed: false, # necessary for now (see https://github.com/Homebrew/homebrew-cask/pull/100248)
            }
end
