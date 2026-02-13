cask "alma" do
  arch arm: "arm64", intel: "x64"

  version "0.0.375"
  sha256 arm:   "a4f3bc7458f3940688ad4fee1d939c4ce3ab59749c1091e4b16291c2f60541b6",
         intel: "de72986055fb990310c1d27cb03c62a3a2597470692f2b95a6d2ab07a8301ce5"

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
