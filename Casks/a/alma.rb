cask "alma" do
  arch arm: "arm64", intel: "x64"

  version "0.0.218"
  sha256 arm:   "dbc09599a13cf47d17a9bf8222ff3086534fe36043cc91c617d65cd5b0ca2ec3",
         intel: "fb06ac18a3f4e7e5455fe45fe4fa19a9c0ed7edc92e89c3ec9a0fbb797889eeb"

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
