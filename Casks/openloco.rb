cask "openloco" do
  version "22.04"
  sha256 "275100af4627043b6c25be3d09d07f07bf9e065c2fdf9c1710150e010409daa7"

  url "https://github.com/OpenLoco/OpenLoco/releases/download/v#{version}/openloco-v#{version}-macos.zip"
  name "OpenLoco"
  desc "Open source re-implementation of Chris Sawyer's Locomotion"
  homepage "https://github.com/OpenLoco/OpenLoco"

  depends_on macos: "<= :mojave"

  app "OpenLoco.app"

  zap trash: "~/Library/Preferences/io.openloco.OpenLoco.plist"
end
