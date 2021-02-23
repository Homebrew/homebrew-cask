cask "camo-studio" do
  version "1.2.4,144"
  sha256 "37aea984109f4c8bf6f007a8bd8cb55de2e745773684c8cca3d736b421023ce0"

  url "https://reincubate.com/res/labs/camo/Camo%20Studio%20#{version.before_comma}%20%28#{version.after_comma}%29%20%5BRelease%5D.app.zip"
  name "Camo Studio"
  desc "Use your phone as a high-quality webcam with advanced controls, custom watermarks, Portrait mode, and more."
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
