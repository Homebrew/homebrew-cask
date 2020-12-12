cask "cockatrice" do
  version "2.7.5,2020-08-23:Blessed_Sanctuary"

  if MacOS.version <= :mojave
    sha256 "5e2d56a2051713b391e88b55cff0fd9edf492ea3807eef20b00d8aa26a4c54a1"

    # github.com/Cockatrice/Cockatrice/ was verified as official when first introduced to the cask
    url "https://github.com/Cockatrice/Cockatrice/releases/download/#{version.after_comma.before_colon}-Release-#{version.before_comma}/Cockatrice-#{version.after_colon}-#{version.before_comma}-macos10.13.dmg"
  else
    sha256 "51e563d33310920d1623f826b33a334cc15bd42531a154e5ae2cec3adb4158af"

    # github.com/Cockatrice/Cockatrice/ was verified as official when first introduced to the cask
    url "https://github.com/Cockatrice/Cockatrice/releases/download/#{version.after_comma.before_colon}-Release-#{version.before_comma}/Cockatrice-#{version.after_colon}-#{version.before_comma}-macos10.15.zip"
  end

  appcast "https://github.com/Cockatrice/Cockatrice/releases.atom"
  name "Cockatrice"
  desc "Cross-platform virtual tabletop for multiplayer card games"
  homepage "https://cockatrice.github.io/"

  depends_on macos: ">= :high_sierra"

  app "cockatrice.app"
  app "oracle.app"
  app "servatrice.app"

  uninstall quit: [
    "com.cockatrice.cockatrice",
    "com.cockatrice.oracle",
    "com.cockatrice.servatrice",
  ]

  zap trash: [
    "~/Library/Application Support/Cockatrice",
    "~/Library/Preferences/com.cockatrice.Cockatrice.plist",
    "~/Library/Preferences/com.cockatrice.oracle.plist",
    "~/Library/Preferences/de.cockatrice.Cockatrice.plist",
    "~/Library/Saved Application State/com.cockatrice.cockatrice.savedState",
    "~/Library/Saved Application State/com.cockatrice.oracle.savedState",
  ]
end
