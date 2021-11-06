cask "capture-one" do
  version "14.4.1.16"
  sha256 "1a6a2b0ba582e3e120daf4090859360f5ec030a324c0756181ce7fc90027f2d3"

  url "https://downloads.phaseone.com/3a3ed51a-0bfe-488d-81b0-697c138e48ef/International/CaptureOne21.Mac.#{version}.dmg",
      verified: "downloads.phaseone.com"
  name "Capture One 21"
  desc "Photo editing software developed by Phase One"
  homepage "https://www.captureone.com/"

  app "Capture One 21.app"
end
