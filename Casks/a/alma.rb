cask "alma" do
  arch arm: "arm64", intel: "x64"

  version "0.0.265"
  sha256 arm:   "d0a7b688a5a2b995c9e208d948e663b3b18e61eb70e6333be5b00951f2cc00f0",
         intel: "836b4d2547c4d2918c707b02b65da021132247161c70085fed31bf62f1050138"

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
