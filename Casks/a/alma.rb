cask "alma" do
  arch arm: "arm64", intel: "x64"

  version "0.0.253"
  sha256 arm:   "029c0c12e96e7c22b3436132d72662a909f000abc23437fdf86ac7470d48d6ff",
         intel: "84cecad13ecd1e8f3fc9912f5d8128a6a452ca214a7130a59b952f3d5ecc822e"

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
