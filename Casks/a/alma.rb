cask "alma" do
  arch arm: "arm64", intel: "x64"

  version "0.0.203"
  sha256 arm:   "19daeb1841dfbd12b5da8d12e95a38055d672c3629612cdfaeeb8d8ab6166b08",
         intel: "0fcb7167c3d9e2bdfe9f7d8545d802d0dc53bebf8c245a02474bbbb3ee7eeea7"

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
