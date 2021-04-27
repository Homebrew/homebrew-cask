cask "camo-studio" do
  version "1.3.3,4503"
  sha256 "a7d067775f1ae07b44da94fa0139ed1dee67101a906d781285980510b58238fe"

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
