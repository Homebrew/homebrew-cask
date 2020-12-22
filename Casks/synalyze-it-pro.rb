cask "synalyze-it-pro" do
  version "1.23.4"
  sha256 "b063546e4a053d5423fe464a56fa27b1f41c6ef2cc36f3f2370ef165533b43dc"

  url "https://www.synalyze-it.com/Downloads/SynalyzeItProTA_#{version}.zip",
      verified: "synalyze-it.com/Downloads/"
  name "Synalyze It! Pro"
  desc "Hex editing and binary file analysis app"
  homepage "https://www.synalysis.net/"

  livecheck do
    url "https://www.synalyze-it.com/SynalyzeItPro/appcast.xml"
    strategy :sparkle
  end

  app "Synalyze It! Pro.app"
end
