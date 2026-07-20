cask "makeracam" do
  version "0.2.1.9"
  sha256 "c591506cb661778a3dc08e56a86ad4e033780214ea17e9fc6a9955a1c973d2bd"

  url "https://github.com/MakeraInc/MakeraCAM/releases/download/v#{version}/MakeraCAM_Mac_v#{version}.dmg",
      verified: "github.com/MakeraInc/MakeraCAM/"
  name "MakeraCAM"
  desc "CAM software for Makera CNCs"
  homepage "https://www.makera.com/pages/software"

  depends_on :macos

  app "MakeraCAM.app"

  zap trash: "~/Library/Application Support/MakeraCAM"

  caveats do
    requires_rosetta
  end
end
