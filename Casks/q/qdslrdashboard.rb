cask "qdslrdashboard" do
  version "3.6.7"
  sha256 "a3360bbdc3ad98629c120f916ccb420c10ac8554ffe655866a276259c535494c"

  url "https://files.lrtimelapse.com/dslrdashboard/V#{version}/qDslrDashboard_V#{version}_macOS_x64.dmg",
      verified: "files.lrtimelapse.com/dslrdashboard/"
  name "qDslrDashboard"
  desc "Application for controlling Nikon, Canon and Sony cameras"
  homepage "https://dslrdashboard.info/"

  livecheck do
    url "https://dslrdashboard.info/downloads/"
    strategy :page_match do |page|
      page[%r{href=.*?/qdslrdashboard[._-]v?(\d+(?:-\d+)*)[._-]macos}i, 1].tr("-", ".")
    end
  end

  depends_on macos: ">= :mojave"

  app "qDslrDashboard.app"
end
