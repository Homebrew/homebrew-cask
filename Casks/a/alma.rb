cask "alma" do
  arch arm: "arm64", intel: "x64"

  version "0.0.206"
  sha256 arm:   "5558eed000eeac4c377294780c54003dcda595ecfa30a5a7e34ad6cfe52684a3",
         intel: "85b7ec6e17d2abd938fef7a7e8e42c2de3525a4e47a8b8a62dfe6c038d1b9905"

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
