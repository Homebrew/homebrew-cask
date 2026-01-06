cask "alma" do
  arch arm: "arm64", intel: "x64"

  version "0.0.183"
  sha256 arm:   "93a5f16cc72220a231af82e3e430e92810f294a0c6924fb9c87505fefb390fda",
         intel: "437964a9804ec65c61dde9dba043b36e9d9a425637985b01b0a0b2761c6ddcd0"

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
