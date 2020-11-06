cask "smart-converter-pro" do
  version "3.0.2"
  sha256 "1101f6327414198153b02446eaf0f26721dfc24e50f26daeb92c37de5360c639"

  url "https://download.shedworx.com/scp#{version.major}/SmartConverterPro-#{version}.dmg"
  name "Smart Converter Pro"
  desc "Video converter"
  homepage "https://shedworx.com/smart-converter-pro"

  depends_on macos: ">= :high_sierra"

  app "Smart Converter Pro #{version.major}.app"

  zap trash: [
    "~/Library/Containers/com.shedworx.smartconverter",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.shedworx.smartconverter.sfl*",
  ]
end
