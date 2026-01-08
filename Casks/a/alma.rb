cask "alma" do
  arch arm: "arm64", intel: "x64"

  version "0.0.196"
  sha256 arm:   "61c4aa701b133b7c649cc15a05d41bb32d9974c46eba2b5d0ac5fab9f393bc03",
         intel: "08955737e18814b540afc499d1ee25c676cfab9c2693713277258e283a1a430e"

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
