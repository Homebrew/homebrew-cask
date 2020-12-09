cask "masterway-note" do
  version "1.2.1,63"
  sha256 :no_check

  # prota.oss-cn-beijing.aliyuncs.com/ was verified as official when first introduced to the cask
  url "https://prota.oss-cn-beijing.aliyuncs.com/downloads/latest/%E5%A4%A7%E5%B8%88%E7%AC%94%E8%AE%B0masterwaynote.pkg"
  appcast "https://masterwaynote.com/autoupdate/darwin?bundleId=1"
  name "Masterway Note"
  name "大师笔记"
  homepage "https://masterwaynote.com/"

  auto_updates true

  pkg "大师笔记masterwaynote.pkg"

  uninstall pkgutil: "YQ.Masterway.macOS",
            quit:    "YQ.Masterway.macOS"
end
