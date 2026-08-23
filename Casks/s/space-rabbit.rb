cask "space-rabbit" do
  version "2.4.0"
  sha256 "ce1d61ac9b421b5e2b8effa6b30fea41b1f696185c449e746cbe5329f4a67668"

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
