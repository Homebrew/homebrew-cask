cask "smart-converter-pro" do
  version "3.1.5"
  sha256 "2fe39233018ec9edf44e2f1b9979db881010899ecf95838717edf7cdbd5a38cf"

  url "https://download.shedworx.com/scp#{version.major}/SmartConverterPro-#{version}.dmg"
  name "Smart Converter Pro"
  desc "Video converter"
  homepage "https://shedworx.com/smart-converter-pro"

  livecheck do
    url "https://shedworx.com/download/?product=scp3"
    regex(/href=.*?SmartConverterPro[._-]v?(\d+(?:\.\d+)+)\.dmg/i)
  end

  depends_on macos: ">= :high_sierra"

  app "Smart Converter Pro #{version.major}.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.shedworx.smartconverter.sfl*",
    "~/Library/Containers/com.shedworx.smartconverter",
  ]
end
