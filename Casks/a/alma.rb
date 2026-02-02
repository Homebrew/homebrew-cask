cask "alma" do
  arch arm: "arm64", intel: "x64"

  version "0.0.243"
  sha256 arm:   "04c98552ee7ebfb9d7a32529b04def26a8d65c0773fbdabde3c76cdf18c7796a",
         intel: "d4fdcde8f10f4d3cde1149241cf53f6967ae44471a08a1d49856a65e32ea48fc"

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
