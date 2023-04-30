cask "inochi-creator" do
  version "0.7.4.1"
  sha256 "cb59ac8d58c6874a13f9e178ff0bc31e9630f8fd1a36c24403f82c65e62c6dac"

  url "https://github.com/Inochi2D/inochi-creator/releases/download/v#{version}/Install_Inochi_Creator.dmg",
      verified: "github.com/Inochi2D/inochi-creator/"
  name "Inochi Creator"
  desc "Open source editor for the Inochi2D puppet format"
  homepage "https://inochi2d.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Inochi Creator.app"
end
