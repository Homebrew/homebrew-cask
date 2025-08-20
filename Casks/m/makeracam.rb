cask "makeracam" do
  version "0.2.1.6"
  sha256 "e30ab7da27a04027c873b6f27cf757e1dca10cc7a212fbd2c5d85caf88726f3c"

  url "https://github.com/MakeraInc/MakeraCAM/releases/download/v#{version}/MakeraCAM_Mac_v#{version}.dmg",
      verified: "github.com/MakeraInc/MakeraCAM/"
  name "MakeraCAM"
  desc "CAM software for Makera CNCs"
  homepage "https://www.makera.com/pages/software"

  depends_on macos: ">= :catalina"

  app "MakeraCAM.app"

  zap trash: "~/Library/Application Support/MakeraCAM"

  caveats do
    requires_rosetta
  end
end
