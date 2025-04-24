cask "adobe-dng-converter" do
  version "17.3"
  sha256 "dcc681356e64f24568ffebb7fde813497d0dc491234c8898534368228d4df51f"

  url "https://download.adobe.com/pub/adobe/dng/mac/DNGConverter_#{version.dots_to_underscores}.dmg"
  name "Adobe DNG Converter"
  desc "DNG file converter"
  homepage "https://helpx.adobe.com/camera-raw/using/adobe-dng-converter.html"

  livecheck do
    url "https://helpx.adobe.com/photoshop/kb/uptodate.html"
    regex(%r{Adobe\s+DNG\s+Converter\s+(?:is\s+)?(?:<[^>]+?>)?v?(\d+(?:\.\d+)+)(?:</[^>]+?>)?}im)
  end

  depends_on macos: ">= :mojave"

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
