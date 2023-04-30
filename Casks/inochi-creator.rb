cask "inochi-creator" do
  version "0.7.4"
  sha256 "fad0830b40ff22c371bdb1d84708a211ec400c48157c82ab563887f7919c6fa2"

  url "https://github.com/Inochi2D/inochi-creator/releases/download/v#{version}/Install_Inochi_Creator.dmg",
      verified: "github.com/Inochi2D/inochi-creator/"
  name "Inochi Creator"
  desc "An open source editor for the Inochi2D puppet format."
  homepage "https://inochi2d.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  installer manual: "Install_Inochi_Creator.dmg"
end
