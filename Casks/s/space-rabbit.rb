cask "space-rabbit" do
  version "2.5.0"
  sha256 "bcaa29f19ee3ed811831360f0e1f7a8b91fab0fb287c464199398dff6d7cf76a"

  url "https://github.com/Tahul/space-rabbit/releases/download/v#{version}/Space-Rabbit.dmg"
  name "Space Rabbit"
  desc "Removes animations when switching between Spaces"
  homepage "https://space-rabbit.app/"

  auto_updates true
  depends_on macos: :sequoia

  app "Space Rabbit.app"

  uninstall quit:       "app.spacerabbit",
            login_item: "Space Rabbit"

  zap trash: "~/Library/Preferences/app.spacerabbit.plist"
end
