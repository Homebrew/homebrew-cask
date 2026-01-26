cask "makeracam" do
  version "0.2.1.8"
  sha256 "861ecc9f1604e91c5ecdb672fcd0ee837ce27adb5b1f79158f920d1924bbaf13"

  url "https://github.com/MakeraInc/MakeraCAM/releases/download/v#{version}/MakeraCAM_Mac_v#{version}.dmg",
      verified: "github.com/MakeraInc/MakeraCAM/"
  name "MakeraCAM"
  desc "CAM software for Makera CNCs"
  homepage "https://www.makera.com/pages/software"

  app "MakeraCAM.app"

  zap trash: "~/Library/Application Support/MakeraCAM"

  caveats do
    requires_rosetta
  end
end
