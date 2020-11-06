cask "synalyze-it-pro" do
  version "1.23.4"
  sha256 "b063546e4a053d5423fe464a56fa27b1f41c6ef2cc36f3f2370ef165533b43dc"

  # synalyze-it.com/Downloads/ was verified as official when first introduced to the cask
  url "https://www.synalyze-it.com/Downloads/SynalyzeItProTA_#{version}.zip"
  appcast "https://www.synalyze-it.com/SynalyzeItPro/appcast.xml"
  name "Synalyze It! Pro"
  desc "Hex editing and binary file analysis app"
  homepage "https://www.synalysis.net/"

  app "Synalyze It! Pro.app"
end
