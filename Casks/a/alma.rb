cask "alma" do
  arch arm: "arm64", intel: "x64"

  version "0.0.135"
  sha256 arm:   "5abf6a1eae4d77939a2969e296491eab4da3a591969edda68a3d4efa1c3e800c",
         intel: "d7c0a727f102a399a555de6b6fc4a734687bc3f9f557e6d6e44f1826b07f5720"

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
