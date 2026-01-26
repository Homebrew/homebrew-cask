cask "adobe-dng-converter" do
  version "18.1.1"
  sha256 "f52f7b3cb1762900b97f7254dc86d46fd800d7e991c0311f189926fba57ed45a"

  url "https://download.adobe.com/pub/adobe/dng/mac/DNGConverter_#{version.dots_to_underscores}.dmg"
  name "Adobe DNG Converter"
  desc "DNG file converter"
  homepage "https://helpx.adobe.com/camera-raw/using/adobe-dng-converter.html"

  livecheck do
    url "https://www.adobe.com/go/dng_converter_mac",
        user_agent: :curl
    regex(/DNGConverter[._-]v?(\d+(?:[._]\d+)+)\.dmg/i)
    strategy :header_match do |headers, regex|
      match = headers["location"]&.match(regex)
      next if match.blank?

      match[1].tr("_", ".")
    end
  end

  pkg "DNGConverter_#{version.dots_to_underscores}.pkg"

  uninstall quit:    "com.adobe.DNGConverter",
            pkgutil: [
              "com.adobe.CameraRawProfiles",
              "com.adobe.DNGConverter",
            ]

  zap trash: [
    "~/Library/Application Support/Adobe/CameraRaw/GPU/Adobe DNG Converter",
    "~/Library/Application Support/Adobe/CameraRaw/Logs/DNG Converter Log*",
    "~/Library/Saved Application State/com.adobe.DNGConverter.savedState",
  ]
end
