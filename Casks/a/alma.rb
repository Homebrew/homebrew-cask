cask "alma" do
  arch arm: "arm64", intel: "x64"

  version "0.0.169"
  sha256 arm:   "6203ffc7508b1d8abab436382289ac4230a08aac578e1fa9fa744e2476190677",
         intel: "f97e50fbf254eb8e0e4894e17b932792ef950f4e9f2e01e48a9c252170a13adb"

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
