cask "pencil2d" do
  version "0.6.5"
  sha256 "b69c73f3c0dd6b1724344609bf756467a145c9fb29395768dee83bc3bfbc0a4e"

  # github.com/pencil2d/pencil/ was verified as official when first introduced to the cask
  url "https://github.com/pencil2d/pencil/releases/download/v#{version}/pencil2d-mac-#{version}.zip"
  appcast "https://github.com/pencil2d/pencil/releases.atom"
  name "Pencil2D"
  name "Pencil2D Animation"
  desc "Open-source tool to make 2D hand-drawn animations"
  homepage "https://www.pencil2d.org/"

  depends_on macos: ">= :sierra"

  app "Pencil2D/Pencil2D.app"
end
