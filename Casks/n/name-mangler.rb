cask "name-mangler" do
  version "3.9.2"
  sha256 "bcce4805138e4817b678a77838d96c2b136da53f8ac9690f7c91b2c374f76559"

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
