cask "cemu" do
  arch arm: "arm", intel: "intel"

  on_mojave :or_older do
    version "1.3"
    sha256 "db28a0497ea944a6118f869b50268d5f8c3730c37367033eeebc7cdec08fd60c"

    url "https://github.com/CE-Programming/CEmu/releases/download/v#{version}/macOS_CEmu.dmg",
        verified: "github.com/CE-Programming/CEmu/"

    livecheck do
      skip "Legacy version"
    end
  end
  on_catalina do
    version "2.0"
    sha256 "11b5ce8fea2c058dc5237756c092342afc618c3010c65694cdcf3b8c0f6b6664"

    url "https://github.com/CE-Programming/CEmu/releases/download/v#{version}/CEmu-v#{version}_macOS_Qt5_intel.dmg",
        verified: "github.com/CE-Programming/CEmu/"
  end
  on_big_sur :or_newer do
    version "2.0"
    sha256 arm:   "e554ca753f263b2ebba75d36c1e724b5a31b35a24c19bd004c70c59b8135abc8",
           intel: "ab903065536cd393f7c8c118be929753be542d4ab9314d91c3258daa87b6290a"

    url "https://github.com/CE-Programming/CEmu/releases/download/v#{version}/CEmu-v#{version}_macOS_Qt6_#{arch}.dmg",
        verified: "github.com/CE-Programming/CEmu/"
  end

  name "CEmu"
  desc "TI-84 Plus CE and TI-83 Premium CE calculator emulator"
  homepage "https://ce-programming.github.io/CEmu/"

  depends_on macos: ">= :sierra"

  app "CEmu.app"

  zap trash: [
    "~/Library/Preferences/cemu-dev",
    "~/Library/Preferences/com.yourcompany.CEmu.plist",
  ]
end
