cask "alma" do
  arch arm: "arm64", intel: "x64"

  version "0.0.118"
  sha256 arm:   "efb33b9a4ccaa6d062c29c2ecf696f50833b550d9c7bfb3459dfda617e4e3c13",
         intel: "d866b4d62a6a80b0605dd1d0f0cd60985c05e02f1998e181fb81c0e2626bf819"

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
  depends_on macos: ">= :tahoe"

  app "Alma.app"

  uninstall quit: "com.yetone.alma"

  zap trash: [
    "~/.config/alma",
    "~/Library/Application Support/alma",
    "~/Library/Preferences/com.yetone.alma.plist",
  ]
end
