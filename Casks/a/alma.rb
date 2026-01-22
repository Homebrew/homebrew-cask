cask "alma" do
  arch arm: "arm64", intel: "x64"

  version "0.0.228"
  sha256 arm:   "40b78874db318f4a1d8588cc47c3a0ff0965d6e06b4a5ebafbe63e602e07c066",
         intel: "1a5b17d946a6b1d16b02e0105bcfee310eb5ed62035fcb5712539d4a512e0865"

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
