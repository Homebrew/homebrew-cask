cask "imazing-converter" do
  version "2.0.10,555"
  sha256 "89f5abf887c2690ed27c8a58451451f6bb8923d0da6f344509817f78dfa2a0f6"

  url "https://downloads.imazing.com/mac/iMazing-Converter/#{version.csv.first}.#{version.csv.second}/iMazing_Converter_#{version.csv.first}.#{version.csv.second}.dmg"
  name "iMazing Converter"
  desc "Free tool to convert HEIC to JPEG and HEVC to MP4"
  homepage "https://imazing.com/converter"

  livecheck do
    url "https://downloads.imazing.com/com.DigiDNA.iMazingConverterMac.xml"
    strategy :sparkle
  end

  auto_updates true

  app "iMazing Converter.app"

  zap trash: [
    "~/Library/Application Support/com.DigiDNA.iMazingHEICConverterMac",
    "~/Library/Caches/com.DigiDNA.iMazingHEICConverterMac",
    "~/Library/HTTPStorages/com.DigiDNA.iMazingHEICConverterMac",
    "~/Library/Preferences/com.DigiDNA.iMazingHEICConverterMac.plist",
  ]
end
