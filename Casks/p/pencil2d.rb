cask "pencil2d" do
  version "0.6.6"
  sha256 "9c3aad2adc3aee1234ddb1229f80562843b46ff167eb3ba12acf76846d96edda"

  url "https://github.com/pencil2d/pencil/releases/download/v#{version}/pencil2d-mac-#{version}.zip",
      verified: "github.com/pencil2d/pencil/"
  name "Pencil2D"
  name "Pencil2D Animation"
  desc "Open-source tool to make 2D hand-drawn animations"
  homepage "https://www.pencil2d.org/"

  depends_on macos: ">= :sierra"

  app "Pencil2D/Pencil2D.app"
end
