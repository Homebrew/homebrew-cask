cask "alma" do
  arch arm: "arm64", intel: "x64"

  version "0.0.217"
  sha256 arm:   "d89d1944eadba0d445a23ec22b1e270d023fd7aab8ad4c79dadcb753d4510b00",
         intel: "f87a53cc587bf068f481669a8f34a4c871460401942d312bd4c417fe5f63dd16"

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
