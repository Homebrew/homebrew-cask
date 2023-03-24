cask "devutils" do
  version "1.16.0"
  sha256 "f92897d414143161d679433bcceb83e0588fd0970342ee9e81e537263515807d"

  url "https://devutils.com/archives/DevUtils-#{version}.dmg"
  name "DevUtils"
  desc "All-in-one toolbox for developers"
  homepage "https://devutils.com/"

  livecheck do
    url "https://devutils.com/archives/appcast.xml"
    strategy :sparkle, &:short_version
  end

  depends_on macos: ">= :high_sierra"

  app "DevUtils.app"

  zap trash: [
    "~/Library/Caches/DevUtils",
    "~/Library/Caches/tonyapp.devutils",
    "~/Library/Preferences/tonyapp.devutils",
  ]
end
