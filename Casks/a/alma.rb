cask "alma" do
  arch arm: "arm64", intel: "x64"

  version "0.0.455"
  sha256 arm:   "69e9f2a2c97f6810d7befe725b426ae187eef1847d0838aed2f9e4ee5f9d345c",
         intel: "0c98c2304fc68b1b0c509e0956d0512d41b39153f6c31a4746d87a696408f8f0"

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
