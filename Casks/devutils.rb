cask "devutils" do
  version "1.17.0"
  sha256 "2e14de0f2b5f6c3a4611b808d05a3ae1408d3c1c0caa9b1dd7d887c9f33d717e"

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
