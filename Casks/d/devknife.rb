cask "devknife" do
  version "1.15.4"
  sha256 "dd382a46dabe24b72c504be7803056c9607cbdd30ea59e6e1d1fc2684edc5b6d"

  url "https://files.solotuna.com/devknife/DevKnife-#{version}.dmg",
      verified: "files.solotuna.com/devknife/"
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
    "~/Library/Application Support/com.solotuna.devknife/",
    "~/Library/Preferences/com.solotuna.devknife.plist",
  ]
end
