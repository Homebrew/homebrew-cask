cask "synalyze-it-pro" do
  version "1.29"
  sha256 "e022b6766a0810cbafd7266510f20b01f36dd31b7dd44aa28c5d149fda0aaada"

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
