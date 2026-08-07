cask "space-rabbit" do
  version "2.1.4"
  sha256 "9a16a0b99736cd78ae6fa21afe0c1ee1ce66902a6cff4ee5461b49ff4cf0a09c"

  url "https://github.com/Tahul/space-rabbit/releases/download/v#{version}/Space-Rabbit.dmg"
  name "Space Rabbit"
  desc "Removes animations when switching between Spaces"
  homepage "https://space-rabbit.app/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :sequoia

  app "Space Rabbit.app"

  uninstall quit:       "app.spacerabbit",
            login_item: "Space Rabbit"

  zap trash: "~/Library/Preferences/app.spacerabbit.plist"
end
