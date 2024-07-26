cask "pencil2d" do
  version "0.7.0"
  sha256 "2e0d6a2cce4577e0f0f673189658893ec2182e6a16d4332d98dde21c55899595"

  url "https://github.com/pencil2d/pencil/releases/download/v#{version}/pencil2d-mac-#{version}.zip",
      verified: "github.com/pencil2d/pencil/"
  name "Pencil2D"
  name "Pencil2D Animation"
  desc "Open-source tool to make 2D hand-drawn animations"
  homepage "https://www.pencil2d.org/"

  depends_on macos: ">= :sierra"

  app "Pencil2D/Pencil2D.app"
end
