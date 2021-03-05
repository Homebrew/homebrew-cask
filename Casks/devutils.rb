cask "devutils" do
  version "1.8.1,57"
  sha256 "4c1db289a972661d7c1eb5953e231de3b5b8b02d4b601d2f82845c8112bb774f"

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
