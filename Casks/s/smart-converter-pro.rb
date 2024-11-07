cask "smart-converter-pro" do
  version "3.1.6"
  sha256 "6690f2c2fa5c8147699ca5226b37f6177a01ff0df93c5f77c4254e86a81e0d18"

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

  caveats do
    requires_rosetta
  end
end
