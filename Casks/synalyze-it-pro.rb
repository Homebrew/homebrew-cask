cask "synalyze-it-pro" do
  version "1.28"
  sha256 "836f6b2f31fc3f1bc5406ce81c3e2cfae9d6127d0cd62f7667d5df25224d0daf"

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
