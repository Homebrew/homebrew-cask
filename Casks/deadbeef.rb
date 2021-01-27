cask "deadbeef" do
  version "1.8.6-rc1"
  sha256 "65f98d1f9a3d6c558712b52abaeaba9092268d88cdf570b8453ba292fba24913"

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
