cask "lunacy" do
  version "13.0"
  sha256 "576513b61e461ec003c710e01b2a34ac4f14c06de6203949bf89f325b832ddcc"

  url "https://lcdn.icons8.com/setup/Lunacy_#{version}.dmg"
  name "Lunacy"
  desc "Graphic design software"
  homepage "https://icons8.com/lunacy"

  livecheck do
    url "https://lunacy.docs.icons8.com/release-notes/"
    regex(/Lunacy[._-]v?(\d+(?:\.\d+)+)\.dmg/i)
  end

  depends_on macos: ">= :monterey"

  app "Lunacy.app"

  zap trash: "~/.local/share/Icons8/Lunacy"
end
