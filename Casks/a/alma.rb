cask "alma" do
  arch arm: "arm64", intel: "x64"

  version "0.0.381"
  sha256 arm:   "b2194870d73c3f477ac458c7d5bc6f0c0cf7ec223aed332481090328d41ef20f",
         intel: "ce4ea87ccc2ae8cafa251a6c3ec0bee581612ecf3e8d2de8aada552e5bd37941"

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
