cask "butler" do
  version "4.4.8"
  sha256 "b6877901f1c5b4d75cebe47fe5cecf461c1b424025b756e6b9efaa44ed9faf7f"

  url "https://manytricks.com/download/_do_not_hotlink_/butler#{version.no_dots}.dmg"
  name "Butler"
  desc "Arrange your tasks in a customisable configuration"
  homepage "https://manytricks.com/butler/"

  livecheck do
    url "https://manytricks.com/butler/appcast/"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "Butler.app"

  zap trash: [
    "~/Library/Application Support/Butler",
    "~/Library/HTTPStorages/com.manytricks.Butler",
    "~/Library/Preferences/com.manytricks.Butler.plist",
  ]
end
