cask "alma" do
  arch arm: "arm64", intel: "x64"

  version "0.0.472"
  sha256 arm:   "d6765c5224039ddd85b01b3431b769c622cbae3e9d75d315a2215eac398d2595",
         intel: "c21491a70910e2b326ad4487ede740e5b0d803585136ffc45a19160215974a20"

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
