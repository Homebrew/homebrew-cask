cask "deadbeef" do
  version "1.8.7-rc2"
  sha256 "a3e47db1b24c682a7e303d763d2e7da7bc514cf7ba5c335fe6427c77e3549aac"

  url "https://downloads.sourceforge.net/deadbeef/travis/osx/#{version.major_minor}/deadbeef-#{version}-osx-x86_64.zip",
      verified: "downloads.sourceforge.net/deadbeef/"
  appcast "https://sourceforge.net/projects/deadbeef/rss?path=/travis/osx/#{version.major_minor}"
  name "DeaDBeeF"
  desc "Modular audio player"
  homepage "https://deadbeef.sourceforge.io/"

  app "DeaDBeeF.app"

  zap trash: [
    "~/Library/Preferences/com.deadbeef.deadbeef.plist",
    "~/Library/Preferences/deadbeef",
    "~/Library/Saved Application State/com.deadbeef.deadbeef.savedState",
  ]
end
