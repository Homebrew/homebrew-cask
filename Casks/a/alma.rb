cask "alma" do
  arch arm: "arm64", intel: "x64"

  version "0.0.224"
  sha256 arm:   "4667b30effc0d13a6a7de686093011ac9854892ac565eb97fcffbc9e11cc31a8",
         intel: "a7285d4fc3b5e39e0ac80a0892e4594b61691eccdd7b9a8b57d4dd5c7c0d8d49"

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
