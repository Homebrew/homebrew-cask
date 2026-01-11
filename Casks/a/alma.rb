cask "alma" do
  arch arm: "arm64", intel: "x64"

  version "0.0.205"
  sha256 arm:   "d168d81dc520d0b5af8c2af3c758fa3b28c5893e1b122ecc53a256f733445754",
         intel: "fc2d503d58887a243d28c36a4db62f6ba053d53722a73d0a3f7f2e37f944ef77"

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
