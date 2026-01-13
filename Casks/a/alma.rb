cask "alma" do
  arch arm: "arm64", intel: "x64"

  version "0.0.210"
  sha256 arm:   "b1966987904bdabb71121111ceacae3bcffcad78b8e0375428e8a5013fea09be",
         intel: "f61f2aca571f1cf2b2d1952bbb04d2a899d3ae7ee930ee2924be488c76df4f8d"

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
