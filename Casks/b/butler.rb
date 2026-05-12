cask "butler" do
  version "4.4.9"
  sha256 "fe01992fa005bc4162f7b38d9d8521b713a48f4e43fc3ebf7e787f570803fab1"

  url "https://manytricks.com/download/_do_not_hotlink_/butler#{version.no_dots}.dmg"
  name "Butler"
  desc "Arrange your tasks in a customisable configuration"
  homepage "https://manytricks.com/butler/"

  livecheck do
    url "https://manytricks.com/butler/appcast/"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on :macos

  app "Butler.app"

  zap trash: [
    "~/Library/Application Support/Butler",
    "~/Library/HTTPStorages/com.manytricks.Butler",
    "~/Library/Preferences/com.manytricks.Butler.plist",
  ]
end
