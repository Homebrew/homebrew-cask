cask "alma" do
  arch arm: "arm64", intel: "x64"

  version "0.0.226"
  sha256 arm:   "685268b92d79f4f73129d6832f7261b478d6404d650d3c220c6b2c4ee34ef4fe",
         intel: "5995fdc6fd4b2559d6b31aecd734ff875aa1648a8da6c19a68bc7b63130636d4"

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
