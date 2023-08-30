cask "multiapp" do
  version "0.241.2"
  sha256 "7586820f4555482838f4d0c3849eb3a136a80c1a15e292e30d64b0fe923de78d"

  url "https://updates.multi.app/installers/Multi%20#{version}.dmg"
  name "Multi"
  desc "Multiplayer Collaboration"
  homepage "https://www.multi.app/"

  livecheck do
    url "https://updates.multi.app/installers/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates
  depends_on macos: ">= :big_sur"

  app "Multi.app"

  zap trash: [
    "~/Library/Application Support/Multi",
    "~/Library/Caches/app.multi.multi",
    "~/Library/Preferences/app.multi.multi.plist",
  ]
end
