cask "openloco" do
  version "22.06.1"
  sha256 "55c3f6faf38bdf89f989534b71783599f007d85e7f19d04711d47afd7f9f7b1b"

  url "https://github.com/OpenLoco/OpenLoco/releases/download/v#{version}/openloco-v#{version}-macos.zip"
  name "OpenLoco"
  desc "Open source re-implementation of Chris Sawyer's Locomotion"
  homepage "https://github.com/OpenLoco/OpenLoco"

  depends_on macos: "<= :mojave"

  app "OpenLoco.app"

  zap trash: "~/Library/Preferences/io.openloco.OpenLoco.plist"
end
