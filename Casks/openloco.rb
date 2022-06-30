cask "openloco" do
  version "22.06"
  sha256 "c42c784ac82718a57a7e4d3a31169d2a1a9a684391c4668acfe242f03938b0d6"

  url "https://github.com/OpenLoco/OpenLoco/releases/download/v#{version}/openloco-v#{version}-macos.zip"
  name "OpenLoco"
  desc "Open source re-implementation of Chris Sawyer's Locomotion"
  homepage "https://github.com/OpenLoco/OpenLoco"

  depends_on macos: "<= :mojave"

  app "OpenLoco.app"

  zap trash: "~/Library/Preferences/io.openloco.OpenLoco.plist"
end
