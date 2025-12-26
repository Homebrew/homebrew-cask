cask "8bitdo-ultimate-software-v2" do
  version "1.0.13"
  sha256 "5e6b067f5d0c1730f390b8668c30f4f6d4d36ace511074edee3683b66151cefc"

  url "https://download.8bitdo.com/Ultimate-Software/8BitDo_Ultimate_Software_V2_macOS_V#{version}.zip"
  name "8BitDo Ultimate Software V2"
  desc "Control every piece of your controller"
  homepage "https://app.8bitdo.com/Ultimate-Software-V2/"

  livecheck do
    url :homepage
    regex(/href=.*?8BitDo[._-]Ultimate[._-]Software[._-]V2[._-]macOS[._-]v?(\d+(?:\.\d+)+)\.zip/i)
  end

  depends_on macos: ">= :monterey"

  app "8BitDo Ultimate Software V2.app"

  zap trash: [
    "~/Library/Application Scripts/com.8BitDo.UltimateV2",
    "~/Library/Caches/com.8BitDo.UltimateV2",
  ]
end
