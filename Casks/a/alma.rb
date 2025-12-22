cask "alma" do
  arch arm: "arm64", intel: "x64"

  version "0.0.125"
  sha256 arm:   "7376aeffbe41c3bc3374ad09e065a5640d3a534e0555b930fc881b60f9154b1c",
         intel: "d264e9f0ff49d3c0e40910fb1f91c2e92d8f202227f0f90b26febcd73a0159de"

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
  depends_on macos: ">= :tahoe"

  app "Alma.app"

  uninstall quit: "com.yetone.alma"

  zap trash: [
    "~/.config/alma",
    "~/Library/Application Support/alma",
    "~/Library/Preferences/com.yetone.alma.plist",
  ]
end
