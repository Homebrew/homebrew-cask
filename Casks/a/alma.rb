cask "alma" do
  arch arm: "arm64", intel: "x64"

  version "0.0.233"
  sha256 arm:   "de54d7625fe2feb0ed4fe654609866d46da7b056aefd14f72de5daf1cd38107e",
         intel: "b66b4c5906643ba1de1ecf95ad76750129be690b0bdb84f9ef68fa341519a356"

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
