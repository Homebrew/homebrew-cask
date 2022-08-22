cask "synalyze-it-pro" do
  version "1.24"
  sha256 "25d34f0f532100319282972451332b9dc4fd86121e3b0f117f3afb8d3ca5b01f"

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
