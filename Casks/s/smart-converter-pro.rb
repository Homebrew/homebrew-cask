cask "smart-converter-pro" do
  version "3.1.5"
  sha256 "7387468462738ec23ee7bdb9baa87575c74204f14ef646f14efa267a9d81a67e"

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
