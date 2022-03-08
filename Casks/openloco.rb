cask "openloco" do
  version "22.03"
  sha256 "08d759b8e7b072f2feb9ef5388e37bf84b317399d32e1e2163d277adcc194247"

  url "https://github.com/OpenLoco/OpenLoco/releases/download/v#{version}/openloco-v#{version}-macos.zip"
  name "OpenLoco"
  desc "Open source re-implementation of Chris Sawyer's Locomotion"
  homepage "https://github.com/OpenLoco/OpenLoco"

  depends_on macos: "<= :mojave"

  app "OpenLoco.app"

  zap trash: "~/Library/Preferences/io.openloco.OpenLoco.plist"
end
