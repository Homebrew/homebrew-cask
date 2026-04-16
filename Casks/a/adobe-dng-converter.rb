cask "adobe-dng-converter" do
  version "18.3"
  sha256 "18f8d3698b8de123299b5c1337ab9606666d3ee915e80869dfbeef63420117ac"

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

  depends_on macos: ">= :sonoma"

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
