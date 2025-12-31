cask "alma" do
  arch arm: "arm64", intel: "x64"

  version "0.0.165"
  sha256 arm:   "9c4bd11ec6475e5f07c0a51ddd9d8d39c4d617b9af0e67b6556f569e724d415a",
         intel: "3695889b1d4fcaa2b209cd15dbdf1c3f5a705f6f5b1998a14ca8580d52a12384"

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
