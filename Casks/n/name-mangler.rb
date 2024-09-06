cask "name-mangler" do
  version "3.9.1"
  sha256 "6c3574e11292b91c3009973a1ebf0ab902d58ade6dbd2bd78cc681f0e3fa0644"

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
