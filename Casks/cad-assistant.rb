cask "cad-assistant" do
  arch arm: "arm64", intel: "x86_64"

  version "1.6.0_2021-10-06"
  sha256 arm:   "a1a21d2b3294ca556b7a0172df8ed1a8046450894033147be09a9fd1549f2b2d",
         intel: "fade5c9d81446f5f6c914eb043f93134f4f29efa39dac816c769009f92385339"

  url "https://www.opencascade.com/sites/default/files/private/occt/applications/cad_assistant_#{version}_#{arch}.dmg"
  name "CAD Assistant"
  desc "3D viewer and converter for CAD and mesh files"
  homepage "https://www.opencascade.com/products/cad-assistant/"

  livecheck do
    url :homepage
    strategy :page_match
    regex(/href=.*?cad_assistant_(\d+(?:\.\d+)*_(?:\d{4}-\d{2}-\d{2}))_(?:arm64|x86_64)\.dmg/i)
  end

  auto_updates true

  app "CAD Assistant.app"

  zap trash: [
    "~/Library/Caches/OpenCASCADE/CAD Assistant",
    "~/Library/Saved Application State/org.opencascade.cadassistant.savedState",
  ]
end
