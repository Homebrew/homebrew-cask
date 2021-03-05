cask "devutils" do
  version :latest
  sha256 :no_check

  url "https://devutils.app/archives/DevUtils-latest.dmg"
  name "DevUtils"
  desc "Offline Toolbox for Developers"
  homepage "https://devutils.app/"

  app "DevUtils.app"

  zap trash: [
    "~/Library/Caches/DevUtils",
    "~/Library/Caches/tonyapp.devutils",
    "~/Library/Preferences/tonyapp.devutils",
  ]
end
