cask "alma" do
  arch arm: "arm64", intel: "x64"

  version "0.0.194"
  sha256 arm:   "d3d077c2cdee40f9c3303d44d5b26edda3da0fce741ce19af9821cd32c678d81",
         intel: "7e654c26d32a939f75d2664a6d03b044f0aca008b0e257c0062067b0e922920a"

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
