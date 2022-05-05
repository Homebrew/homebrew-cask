cask "mpeg-streamclip" do
  version "1.9.2"
  sha256 "f539e527a7232a9ac4398c0d3e7730010058b300c8d7fd33c4baf8c9ac232b85"

  url "http://www.alfanet.it/squared5/MPEG_Streamclip_#{version}.dmg",
      verified: "alfanet.it/squared5/"
  name "MPEG Streamclip"
  desc "Video converter, player, and editor"
  homepage "http://www.squared5.com/"

  livecheck do
    url "http://www.squared5.com/svideo/mpeg-streamclip-mac.html"
    regex(%r{href=.*?/MPEG_Streamclip_(\d+(?:\.\d+)*)\.dmg}i)
  end

  depends_on macos: "<= :mojave"

  app "MPEG Streamclip.app"
end
