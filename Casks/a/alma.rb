cask "alma" do
  arch arm: "arm64", intel: "x64"

  version "0.0.380"
  sha256 arm:   "814c84b9eb821658fd439050da6c7607e24871c96cd5b9ca1a3408115a0abf6a",
         intel: "7d563f5de2334552c0d40ede63497ff001802d9ad0f538d912ae54947aad7cde"

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
