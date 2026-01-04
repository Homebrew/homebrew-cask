cask "alma" do
  arch arm: "arm64", intel: "x64"

  version "0.0.177"
  sha256 arm:   "47fb952d908cc3c006f3a3996dc0e9622ce9d699952da89008c3b0397a25b2c0",
         intel: "6adc47cfc605e1fda4602bddc846f6a67fa42188a8da924ee7f900cb3677338c"

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
