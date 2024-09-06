cask "cemu" do
  arch arm: "arm", intel: "intel"

  version "2.0"
  sha256 arm:   "e554ca753f263b2ebba75d36c1e724b5a31b35a24c19bd004c70c59b8135abc8",
         intel: "ab903065536cd393f7c8c118be929753be542d4ab9314d91c3258daa87b6290a"

  url "https://github.com/CE-Programming/CEmu/releases/download/v#{version}/CEmu-v#{version}_macOS_Qt6_#{arch}.dmg",
      verified: "github.com/CE-Programming/CEmu/"
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
