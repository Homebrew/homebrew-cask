cask "alma" do
  arch arm: "arm64", intel: "x64"

  version "0.0.166"
  sha256 arm:   "fb6a69dc7a844d25ee1fa1c87e63927293bf45971a6089fee678d6534bd58ce6",
         intel: "383e908c8bd83ff3beba17af4138223410bda8864865fa7fe7d06d97ea2a925a"

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
