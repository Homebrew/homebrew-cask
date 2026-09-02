cask "devknife" do
  version "1.17.0"
  sha256 "d350b751933dfa86d78fd19809f938d1061fa9e3f83f783cab37b7c955e4bceb"

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

  zap trash: [
    "~/Library/Application Support/com.solotuna.devknife",
    "~/Library/Preferences/com.solotuna.devknife.plist",
  ]
end
