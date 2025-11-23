cask "circuitjs1" do
  # NOTE: "1" is not a version number, but an intrinsic part of the product name
  arch arm: "arm"

  version "3.1.3js"
  sha256 :no_check

  url "https://www.falstad.com/circuit/offline/CircuitJS1-mac#{arch}.dmg"
  name "Falstad CircuitJS"
  desc "Electronic circuit simulator"
  homepage "https://www.falstad.com/circuit/"

  livecheck do
    url :url
    strategy :extract_plist
  end

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  app "CircuitJS1.app"

  zap trash: [
    "~/Library/Preferences/com.falstad.CircuitJS1.plist",
    "~/Library/Saved Application State/com.falstad.CircuitJS1.savedState",
  ]
end
