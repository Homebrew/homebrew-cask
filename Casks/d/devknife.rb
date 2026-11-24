cask "devknife" do
  version "1.20.0"
  sha256 "a7ad36f962c3c91cb2e0f21a63e97150af54e3ec071c28a9afad7f9afb44eec7"

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
