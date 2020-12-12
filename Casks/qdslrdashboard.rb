cask "qdslrdashboard" do
  version "3.5.9"
  sha256 "349e0fb9532c92120b9d89790e984fc251d14c5373bfddef4d96f0ff05af26b7"

  url "https://files.lrtimelapse.com/dslrdashboard/V#{version}/qDslrDashboard_V#{version}_macOS.dmg",
      verified: "files.lrtimelapse.com/dslrdashboard/"
  appcast "https://dslrdashboard.info/downloads/"
  name "qDslrDashboard"
  homepage "https://dslrdashboard.info/"

  app "qDslrDashboard.app"
end
