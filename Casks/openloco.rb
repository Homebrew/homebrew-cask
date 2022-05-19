cask "openloco" do
  version "22.05.1"
  sha256 "78f8f71923eac767034d286db87f0219203cfa2fb8413dbd95f2439e4ed339f6"

  url "https://github.com/OpenLoco/OpenLoco/releases/download/v#{version}/openloco-v#{version}-macos.zip"
  name "OpenLoco"
  desc "Open source re-implementation of Chris Sawyer's Locomotion"
  homepage "https://github.com/OpenLoco/OpenLoco"

  depends_on macos: "<= :mojave"

  app "OpenLoco.app"

  zap trash: "~/Library/Preferences/io.openloco.OpenLoco.plist"
end
