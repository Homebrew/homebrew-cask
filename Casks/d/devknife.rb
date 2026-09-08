cask "devknife" do
  version "1.18.1"
  sha256 "94df5154892c4b4053a59ee8d46bff6c46891f74c3f5493cc94b8d4558ab9e94"

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
