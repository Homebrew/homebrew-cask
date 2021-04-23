cask "camo-studio" do
  version "1.3.0,173"
  sha256 "749410a2c7520c28e4a8ced2f48be8f246b0852bff4f6c134d5c29eed21b4b8c"

  url "https://reincubate.com/res/labs/camo/CamoStudio-#{version.before_comma}.#{version.after_comma}.app.zip"
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
