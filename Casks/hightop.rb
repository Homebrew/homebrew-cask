cask "hightop" do
  version "1.2.11"
  sha256 "822582bedee41da9f7ab7e45a838b30d641b4459970a917c72e501edcfee20f3"

  url "https://hightop.app/downloads/HighTop#{version}.dmg"
  name "hightop"
  desc "Quick file access via the menu bar"
  homepage "https://hightop.app/"

  livecheck do
    url "https://hightop.app/downloads/updates.xml"
    strategy :sparkle, &:short_version
  end

  app "HighTop.app"
end
