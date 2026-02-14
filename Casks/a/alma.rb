cask "alma" do
  arch arm: "arm64", intel: "x64"

  version "0.0.429"
  sha256 arm:   "1f0a38d525cbd53847fa395f8935ff3bb742aa5f7c1d058912b3ee730517347c",
         intel: "c8ffdba394414a2875e2d68fe26ebfdf614189f52072a1ec9285ce85ccd95649"

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
