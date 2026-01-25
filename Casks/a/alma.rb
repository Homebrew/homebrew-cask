cask "alma" do
  arch arm: "arm64", intel: "x64"

  version "0.0.234"
  sha256 arm:   "dc54a3981c810edeb6d7907ea2570a654e346e6ebb4a4fb81b513789a143879d",
         intel: "f9224a91b30489fcd60e2a8f99ea957661f5c0ca68a3c08068cde09a603a1eae"

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
