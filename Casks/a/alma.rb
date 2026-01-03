cask "alma" do
  arch arm: "arm64", intel: "x64"

  version "0.0.175"
  sha256 arm:   "2c4c1c44fa13affb98a0991cb28253e6dc751fc3aa92ac524386f9380f853fef",
         intel: "8fc8ebd10d619e5b32f026b3c9c190c60a97fcb341052eddd0bc8dd438b3f311"

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
