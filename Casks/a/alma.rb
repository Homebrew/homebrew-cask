cask "alma" do
  arch arm: "arm64", intel: "x64"

  version "0.0.157"
  sha256 arm:   "7bfbe00f7ce697524d1d597c6ce1d2bb16c01b9270a78ba57d399d94a050e6a3",
         intel: "7d16309ee68196052141dfee3f45707f4210c88e07b4ecc67cf4e97b8ff83b98"

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
