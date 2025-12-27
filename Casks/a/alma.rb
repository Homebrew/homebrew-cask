cask "alma" do
  arch arm: "arm64", intel: "x64"

  version "0.0.150"
  sha256 arm:   "f9be044dddb2076db2bc67b713b7e5fadcc439595c036e8fa279b84f76ab92df",
         intel: "013cf87515a824f688bd3d49432267e67b00c052f188235a9a919b4d1bf4c824"

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
