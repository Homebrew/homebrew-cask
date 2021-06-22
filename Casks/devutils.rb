cask "devutils" do
  version "1.10.0,75"
  sha256 "544df77e9a109e4c06391da7e145bfe7c5ac2c135868b765eb44ad6b8cd87bb1"

  url "https://devutils.app/archives/DevUtils-#{version.before_comma}.dmg"
  name "DevUtils"
  desc "Offline toolbox for developers"
  homepage "https://devutils.app/"

  livecheck do
    url "https://devutils.app/archives/appcast.xml"
    strategy :sparkle
  end

  depends_on macos: ">= :el_capitan"

  app "DevUtils.app"

  zap trash: [
    "~/Library/Caches/DevUtils",
    "~/Library/Caches/tonyapp.devutils",
    "~/Library/Preferences/tonyapp.devutils",
  ]
end
