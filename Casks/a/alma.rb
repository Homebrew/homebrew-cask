cask "alma" do
  arch arm: "arm64", intel: "x64"

  version "0.0.271"
  sha256 arm:   "d1b9b3c5e34cec0bf0527ceb9db76930f8d82464d1492880d4d1cf72c686b74e",
         intel: "a2b8b8d7ebbe1b8bdd7c4584645d01b2452ebb06f6da48642666949222be568c"

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
