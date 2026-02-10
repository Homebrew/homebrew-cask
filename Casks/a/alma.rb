cask "alma" do
  arch arm: "arm64", intel: "x64"

  version "0.0.274"
  sha256 arm:   "651ab7ee9f34b2de2742f585987094e95f332818631e9d4d96500e587f2462f3",
         intel: "0e3e5b158074d325c3d78c82458f6056eed518bda91264bf71e5df9fdf7a08be"

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
