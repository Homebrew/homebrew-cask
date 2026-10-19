cask "remotr" do
  version "0.8.97"
  sha256 "1ff420460e62f6d0720386f4c588d61ee450b97f0986f68f464076be2a057c33"

  url "https://download.remotr.app/Remotr-v#{version}.dmg"
  name "Remotr"
  desc "Remote desktop server using RDP"
  homepage "https://remotr.app/"

  livecheck do
    url "https://download.remotr.app/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :ventura

  app "Remotr.app"
end
