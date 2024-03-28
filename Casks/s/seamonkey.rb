cask "seamonkey" do
  version "2.53.18.2"

  language "cs" do
    sha256 "cc6aa44da2799b82e529ff7d5b685f8715d087925c2b96ecdccceefd14f9051c"
    "cs"
  end
  language "de" do
    sha256 "af38f728a65a9bc5a94b94a5587175fe9dfdd860932e4727dc0a95e8ae81f5af"
    "de"
  end
  language "el" do
    sha256 "410223a7c4112a79a3b8b321f951ee0b2a7eec6f8c9617b6669f1b4bb50146d6"
    "el"
  end
  language "en-GB" do
    sha256 "2850a85d1375b536f9e4ececaa8a4cdd28b44341c1ad1982fad2e9cc5eaa180f"
    "en-GB"
  end
  language "en-US", default: true do
    sha256 "cc456ec6654115e7b85e07b948be4ff774b667962fda14f24e00fad83eb6d4e4"
    "en-US"
  end
  language "es-AR" do
    sha256 "7c2684bf4791c0bd320ccb7742b5fe93b776814c9a032684a8afee1b60eb7e25"
    "es-AR"
  end
  language "es-ES" do
    sha256 "45d230ad5cd48cfe7f97eb63f4f2337ac115474d093ae66b901d7b47350c68f5"
    "es-ES"
  end
  language "fi" do
    sha256 "5356a036612e405141870816d0cb2608bd7696b848bc0ad9786ad7021ed5d771"
    "fi"
  end
  language "fr" do
    sha256 "8b1fe6997988e9371aeb91318775ff17bdf53ba2312c60c4fc9fdc1d357f7025"
    "fr"
  end
  language "hu" do
    sha256 "883e02e5de907352da9592318c35e7f2bb9b62bfcf81267760ee07f969bbc23d"
    "hu"
  end
  language "it" do
    sha256 "fa5fa54a88e139fdf5787f410ed7601a3179137ec0a85323e750dddefec80959"
    "it"
  end
  language "ja" do
    sha256 "601cf6c59955ac869370447535efab01ddb97185585f531ce097c186036f02b8"
    "ja-JP-mac"
  end
  language "ka" do
    sha256 "e5dcb467f177d58cb60a31f9cfa612adae7bf60ed75f7abd7d577805635af5dd"
    "ka"
  end
  language "nl" do
    sha256 "03a136d6cba30ab3c6cf1e93fef0370a69a12a7b2921cebdca2f61013fa4686e"
    "nl"
  end
  language "no" do
    sha256 "ed2ddb435c630f0e24b88e8e71e272b05041a3312f472c72bff7178b5e180340"
    "nb-NO"
  end
  language "pl" do
    sha256 "8d2ab5b266715b4eeda3cc898bf7de997bada718ade73cb05d1c82179250d98c"
    "pl"
  end
  language "pt-BR" do
    sha256 "d08464110fbb870a556ac7649c232986eb33cc64f10efdfa5eeca0593b51fca4"
    "pt-BR"
  end
  language "pt" do
    sha256 "e9c5d576a5a92e7709bc8272d47dd6ca4cba9c1877462729bbdffb62d80469c8"
    "pt-PT"
  end
  language "ru" do
    sha256 "849d19b1bff18b6551dbf498852eb154532cfc7731b9d400ed8cef70e9ddc1e3"
    "ru"
  end
  language "sk" do
    sha256 "e68c055ab8992898c9dfb7ce10a24f5a1062e065f9beb7e8046c3271420b8285"
    "sk"
  end
  language "sv" do
    sha256 "88b5af207df5e1f88efa72cd89ff1ce9f3fdb57b15c7b9901bcbc986f1a0faf5"
    "sv-SE"
  end
  language "zh-TW" do
    sha256 "f40da558d05e78436d2eb394ba8ab2aa3d3b456da09b1ae455809233bda781b2"
    "zh-TW"
  end
  language "zh" do
    sha256 "b73a268140d57e8d47806d8ddc51ec4974e9f0ae7ea8a6137b221dff82d002b2"
    "zh-CN"
  end

  url "https://archive.seamonkey-project.org/releases/#{version}/mac/#{language}/seamonkey-#{version}.#{language}.mac.dmg"
  name "SeaMonkey"
  desc "Development of SeaMonkey Internet Application Suite"
  homepage "https://www.seamonkey-project.org/"

  livecheck do
    url "https://www.seamonkey-project.org/releases/"
    regex(%r{href=.*?/seamonkey-(\d+(?:\.\d+)+)\.en-US\.mac\.dmg}i)
  end

  auto_updates true

  app "SeaMonkey.app"

  zap trash: [
    "~/Library/Application Support/SeaMonkey",
    "~/Library/Caches/SeaMonkey",
    "~/Library/Preferences/org.mozilla.seamonkey.plist",
    "~/Library/Saved Application State/org.mozilla.seamonkey.savedState",
  ]
end
