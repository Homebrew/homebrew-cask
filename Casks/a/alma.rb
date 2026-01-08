cask "alma" do
  arch arm: "arm64", intel: "x64"

  version "0.0.195"
  sha256 arm:   "aca9be23a151e9aa546d47650e1d692235bd1878616c3fd7bc376175a862f4a5",
         intel: "335bce1f02a30a54715020a770f43152b4795d29d6c56340a63edbbe1f04f3e9"

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
