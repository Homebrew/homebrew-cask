cask "alma" do
  arch arm: "arm64", intel: "x64"

  version "0.0.368"
  sha256 arm:   "180430b121fe1015d52cf01ac10da8d94ce17ce0a8aa94040ae332528e346d09",
         intel: "8bf8355be4e45c8911773056e5a776fd8ce5640185885577afd2e0c325bca446"

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
