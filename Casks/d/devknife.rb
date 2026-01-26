cask "devknife" do
  version "1.9.1"
  sha256 "ce054512db7f77d730b419787ee9f0de4c642bfc22c372775d62c080e7592e47"

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
  depends_on macos: ">= :sonoma"

  app "DevKnife.app"

  zap trash: [
    "~/Library/Application Support/com.solotuna.devknife/",
    "~/Library/Preferences/com.solotuna.devknife.plist",
  ]
end
