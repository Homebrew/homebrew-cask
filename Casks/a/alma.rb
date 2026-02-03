cask "alma" do
  arch arm: "arm64", intel: "x64"

  version "0.0.248"
  sha256 arm:   "ad9acadd0f90c191f8eb8a2eccc60984aba8dfdb6e3b5768a7c043adff71033e",
         intel: "fffb62fd36f0c213188a3590fc49be6c4d0d57d47c6a9ee0fb65d33ab172a8ee"

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
