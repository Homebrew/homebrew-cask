cask "qdslrdashboard" do
  version "3.6.4"
  sha256 "29df5858f8d3c5d8e8e6ab6b220f52a391fabd619f0d444094b07e9c36fd81f2"

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
