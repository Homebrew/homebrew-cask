cask "devknife" do
  version "1.5.2"
  sha256 "f014b7104a09ae1776f006390b39a28e58a4122f587404228a718af089f822a3"

  url "https://files.solotuna.com/devknife/DevKnife-#{version}.dmg",
      verified: "files.solotuna.com/devknife/"
  name "DevKnife"
  desc "Collection of handy developer tools"
  homepage "https://devknife.app/"

  livecheck do
    url "http://files.solotuna.com/devknife/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :sonoma"

  app "DevKnife.app"

  zap trash: [
    "~/Library/Application Support/com.solotuna.devknife/",
    "~/Library/Preferences/com.solotuna.devknife.plist",
  ]
end
