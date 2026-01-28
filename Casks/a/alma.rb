cask "alma" do
  arch arm: "arm64", intel: "x64"

  version "0.0.238"
  sha256 arm:   "c607f1a4032585e1c0cca98bc5a753f599777f98181164b807073f176597fe8d",
         intel: "5c6505fde48f0d324605d7bfef9e132eba9233be586a3f9d65a18b40e1afdef2"

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
