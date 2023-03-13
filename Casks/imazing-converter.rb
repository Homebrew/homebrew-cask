cask "imazing-converter" do
  version "2.0.5,466"
  sha256 "ab859de5797c17d4993b2b368921479095455581ba9fe1ef01ed9fe504804f2f"

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
