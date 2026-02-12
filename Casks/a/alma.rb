cask "alma" do
  arch arm: "arm64", intel: "x64"

  version "0.0.335"
  sha256 arm:   "7935fcce07aa296e875b14e1c3833280bd2a9d7b5af410e7cfeff9c75cb76e72",
         intel: "a5926eb4f593a452f7b92341c24e8eb1fd4f8b0fe7fe757cbeaeb984390371a7"

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
