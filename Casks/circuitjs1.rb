cask "circuitjs1" do
  # NOTE: "1" is not a version number, but an intrinsic part of the product name
  version "2.7.6js"
  sha256 :no_check

  url "https://www.falstad.com/circuit/offline/CircuitJS1-mac.dmg"
  name "Falstad CircuitJS"
  desc "Electronic circuit simulator"
  homepage "https://www.falstad.com/circuit/"

  app "CircuitJS1.app"

  zap trash: [
    "~/Library/Preferences/com.falstad.CircuitJS1.plist",
    "~/Library/Saved Application State/com.falstad.CircuitJS1.savedState",
  ]
end
