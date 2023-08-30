cask "multiapp" do
  version "0.241.2"
  sha256 "7586820f4555482838f4d0c3849eb3a136a80c1a15e292e30d64b0fe923de78d"

  url "https://updates.multi.app/installers/Multi%20#{version}.dmg"
  name "Multi"
  desc "Multiplayer Collaboration"
  homepage "https://www.multi.app/"

  livecheck do
    url "https://updates.multi.app/latest"
    strategy :header_match
  end

  auto_updates

  app "Multi.app"

  zap trash: [
    "~/Library/Application Support/Multi",
    "~/Library/Caches/app.multi.multi",
    "~/Library/Preferences/app.multi.multi.plist",
  ]
end
