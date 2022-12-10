cask "synalyze-it-pro" do
  version "1.31"
  sha256 "42d3a49ed0b18daa2a8e0781aa5270eb84e2cfbeba9d4c41c420f995de5a4c65"

  url "https://www.synalyze-it.com/Downloads/SynalyzeItProTA_#{version}.zip",
      verified: "synalyze-it.com/Downloads/"
  name "Synalyze It! Pro"
  desc "Hex editing and binary file analysis app"
  homepage "https://www.synalysis.net/"

  livecheck do
    url "https://www.synalyze-it.com/SynalyzeItPro/appcast.xml"
    strategy :sparkle
  end

  depends_on macos: ">= :mojave"

  app "Synalyze It! Pro.app"
end
