cask "synalyze-it-pro" do
  version "1.27"
  sha256 "c764012f56e8e23a8e787044bbaeb7732aaffc965402f7a2b6a92aa78a4f0426"

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
