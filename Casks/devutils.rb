cask "devutils" do
  version "1.9.0,68"
  sha256 "56d80cb69b08aab13e54afaf9bfff65916182e72edcbbfe2a3ab580177fa4eeb"

  url "https://devutils.app/archives/DevUtils-#{version.before_comma}.dmg"
  name "DevUtils"
  desc "Offline toolbox for developers"
  homepage "https://devutils.app/"

  livecheck do
    url "https://devutils.app/archives/appcast.xml"
    strategy :sparkle
  end

  app "DevUtils.app"

  zap trash: [
    "~/Library/Caches/DevUtils",
    "~/Library/Caches/tonyapp.devutils",
    "~/Library/Preferences/tonyapp.devutils",
  ]
end
