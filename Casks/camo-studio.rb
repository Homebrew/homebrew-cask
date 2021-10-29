cask "camo-studio" do
  version "1.5.0,5619"
  sha256 "ef7ffef7ca8ee1fbeddea329a77348763e083463e8b049a3cddc5502dfb2116a"

  url "https://reincubate.com/res/labs/camo/CamoStudioMac-#{version.before_comma.chomp(".0")}-#{version.after_comma}-Release.app.zip"
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
