cask "alma" do
  arch arm: "arm64", intel: "x64"

  version "0.0.202"
  sha256 arm:   "cf207ab14fa61f0d4bc5d3e93d2c305788e4d1630948a94bf80be60049304aec",
         intel: "4b58a5b85353130cc8e2e81839f2d23ed049b6e8bd505571c681f242b17fec86"

  url "https://updates.alma.now/alma-#{version}-mac-#{arch}.dmg"
  name "Alma"
  desc "AI chat application"
  homepage "https://alma.now/"

  livecheck do
    url "https://updates.alma.now/latest-mac.yml"
    strategy :yaml do |yaml|
      yaml["version"]
    end
  end

  auto_updates true
  depends_on macos: ">= :monterey"

  app "Alma.app"

  uninstall quit: "com.yetone.alma"

  zap trash: [
    "~/.config/alma",
    "~/Library/Application Support/alma",
    "~/Library/Preferences/com.yetone.alma.plist",
  ]
end
