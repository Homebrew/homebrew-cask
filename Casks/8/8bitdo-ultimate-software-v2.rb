cask "8bitdo-ultimate-software-v2" do
  version "1.0.15"
  sha256 "c24b77478cebf104569598e5ca11be2b4156b335239e85f336700691847ac842"

  url "https://support.8bitdo.com/upfiles/Ultimate-Software-V2/8BitDo_Ultimate_Software_V2_macOS_V#{version}.zip"
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
