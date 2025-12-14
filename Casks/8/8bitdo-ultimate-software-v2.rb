cask "8bitdo-ultimate-software-v2" do
  version "1.0.11"
  sha256 "a06ed63f5d5917f884e72c41aefbacd829b1fb16646bdcbf448539bf2c185342"

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
