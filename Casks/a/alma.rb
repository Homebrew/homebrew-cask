cask "alma" do
  arch arm: "arm64", intel: "x64"

  version "0.0.231"
  sha256 arm:   "e4e4f0737f5803f62279584f23ec2ab55d0ae32a36165268b39b165e667c2810",
         intel: "5dbbf2282170371b5e988ea5678442f0bf932f970e5cc5cfda4a412dfcd2eab0"

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
