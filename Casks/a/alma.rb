cask "alma" do
  arch arm: "arm64", intel: "x64"

  version "0.0.478"
  sha256 arm:   "76c2e1f94e243e10b4e53908c2bab6c92bebfad41db4445f86b3e696458d2e4b",
         intel: "7b864e11bb195b930ab170a110594471857a172cde863cdc53db9d782ebdc803"

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
