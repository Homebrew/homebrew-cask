cask "makeracam" do
  version "0.2.1.8"
  sha256 "745ad91347fb4be713b175db8573beb55333d4c8ea48fe3bbbb81d18bbc1495a"

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
