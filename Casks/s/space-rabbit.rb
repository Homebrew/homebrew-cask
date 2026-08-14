cask "space-rabbit" do
  version "2.3.2"
  sha256 "e310fe5d4de0a3ff95ceb342ad254f233ac144a8483225c22e1995cf95e6a1e6"

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
