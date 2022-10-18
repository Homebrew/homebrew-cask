cask "synalyze-it-pro" do
  version "1.26"
  sha256 "a156ee04537e3e48f4907019cbcfff01dacad1703a646bd9d185f45e74b68a10"

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
