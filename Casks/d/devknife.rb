cask "devknife" do
  version "1.19.0"
  sha256 "df591cb1933c2573495d048696de779c99606daf465de8ae1ddd824d59cde075"

  url "https://files.solotuna.com/devknife/DevKnife-#{version}.dmg"
  name "DevKnife"
  desc "Collection of handy developer tools"
  homepage "https://devknife.app/"

  livecheck do
    url "https://files.solotuna.com/devknife/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :sonoma

  app "DevKnife.app"

  uninstall quit: "com.solotuna.devknife"

  zap trash: [
    "~/Library/Application Support/com.solotuna.devknife",
    "~/Library/Application Support/DevKnife",
    "~/Library/Preferences/com.solotuna.devknife.plist",
  ]
end
