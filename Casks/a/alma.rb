cask "alma" do
  arch arm: "arm64", intel: "x64"

  version "0.0.382"
  sha256 arm:   "d6c6621cade2d0215d182cdec9958d6c848027bb260afa1d3c9699b311e39d79",
         intel: "0064373f343a0f1ae4503deb7c41856aed25732bbf9b1beada55b4488c93ed6b"

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
