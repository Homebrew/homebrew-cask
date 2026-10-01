cask "space-rabbit" do
  version "2.6.0"
  sha256 "f015c1726285258b339567273909599852681136d227bd45cca27ea5619c912a"

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
