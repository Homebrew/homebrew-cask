cask "ocastx-zoomin" do
  version "1.0.7"
  sha256 "5fd1fdd6042e3fd2f9d4809b27aec864cffaabbb990f26761a16d99144a03be4"

  # github.com/ocastx/ZoomIn/ was verified as official when first introduced to the cask
  url "https://github.com/ocastx/ZoomIn/releases/download/v#{version}/ZoomIn-#{version}.zip"
  appcast "https://github.com/ocastx/ZoomIn/releases.atom"
  name "Zoom In"
  desc "Safari extension for opening Zoom right away"
  homepage "https://zoom-in.app/"

  depends_on macos: ">= :mojave"

  app "ZoomIn.app"

  zap trash: [
    "~/Library/Application Scripts/com.ocastx.zoom-in",
    "~/Library/Containers/com.ocastx.zoom-in",
  ]
end
