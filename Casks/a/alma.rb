cask "alma" do
  arch arm: "arm64", intel: "x64"

  version "0.0.230"
  sha256 arm:   "d01def9c034fe99c21ead1dbba2fde9e80ae2267f13881cb16231ec0c0141c6e",
         intel: "b455bbadec811a899f3c41bfe74482799a464fe16945f000b33668ad09b64769"

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
