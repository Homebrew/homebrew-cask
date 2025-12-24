cask "maru-jan" do
  version "22.13.0,7770"
  sha256 :no_check

  url "https://www.maru-jan.com/download/Inst_MaruJan_Mac.pkg"
  name "Maru-Jan"
  desc "Play japanese mahjong online"
  homepage "https://www.maru-jan.com/"

  livecheck do
    url :url
    strategy :extract_plist
  end

  pkg "Inst_MaruJan_Mac.pkg"

  uninstall quit:    "com.signaltalk.mji.macos*",
            pkgutil: "com.signaltalk.mji.macos"

  zap trash: [
    "~/Library/Application Scripts/com.signaltalk.mji.macos*",
    "~/Library/Containers/com.signaltalk.mji.macos*",
  ]
end
