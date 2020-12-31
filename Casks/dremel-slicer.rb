cask "dremel-slicer" do
  version "1.2.3"
  sha256 "d2d78f1f7d45af36e446ff0ea7f0b5f99b442aca72d354522945d38a90ab5d51"

  url "https://dremel3d.blob.core.windows.net/dremel3dslicer/#{version}/Dremel3DSlicer-#{version}-mac.zip",
      verified: "dremel3d.blob.core.windows.net/"
  appcast "https://digilab.dremel.com/3D-software"
  name "Dremel DigiLab 3D Slicer"
  homepage "https://digilab.dremel.com/3D-software"

  app "Dremel3DSlicer-#{version}-mac/Dremel DigiLab 3D Slicer.app"
end
