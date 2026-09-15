cask "8bitdo-ultimate-software-v2" do
  version "1.0.20"
  sha256 "653e19ce2d704079885e9c4784f2bcaf93e3851b2ebaf4f9ca3e9a6cbecb53ae"

  url "https://support.8bitdo.com/bd-uploads/files/ultimate_soft/8BitDo_Ultimate_Software_V2_macOS_V#{version}.zip"
  name "8BitDo Ultimate Software V2"
  desc "Control every piece of your controller"
  homepage "https://app.8bitdo.com/Ultimate-Software-V2/"

  livecheck do
    url :homepage
    regex(/href=.*?8BitDo[._-]Ultimate[._-]Software[._-]V2[._-]macOS[._-]v?(\d+(?:\.\d+)+)\.zip/i)
  end

  depends_on macos: :monterey

  app "8BitDo Ultimate Software V2.app"

  zap trash: [
    "~/Library/Application Scripts/com.8BitDo.UltimateV2",
    "~/Library/Caches/com.8BitDo.UltimateV2",
    "~/Library/Containers/com.8BitDo.UltimateV2",
  ]
end
