cask "smart-converter-pro" do
  version "3.1.3"
  sha256 "dae6fce5a294bf1695edf6ad2f2023449239fd4dd4cbe5defeb137a6b4c094ca"

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
    "~/Library/Containers/com.shedworx.smartconverter",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.shedworx.smartconverter.sfl*",
  ]
end
