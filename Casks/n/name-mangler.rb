cask "name-mangler" do
  version "3.9.3"
  sha256 "97cb71af1145bb5b7bec59d7350f3542c554db2569508fb159785ee370578b5f"

  url "https://manytricks.com/download/_do_not_hotlink_/namemangler#{version.no_dots}.dmg"
  name "Name Mangler"
  desc "Multi-file renaming tool"
  homepage "https://manytricks.com/namemangler/"

  livecheck do
    url "https://manytricks.com/namemangler/appcast/"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "Name Mangler.app"

  zap trash: [
    "~/Library/Application Support/Name Mangler",
    "~/Library/Preferences/com.manytricks.NameMangler.plist",
  ]
end
