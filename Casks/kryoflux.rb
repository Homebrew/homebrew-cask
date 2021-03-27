cask "kryoflux" do
  version "2.62"
  sha256 "f4aac0ee77dd8576be686516eaef97dd468ce2f2af099fb6ae2b156eef614350"

  url "https://www.kryoflux.com/download/kryoflux_#{version}_macosx.zip"
  name "KryoFlux"
  desc "Host Software - DiskTool Console (dtc) and UI"
  homepage "https://www.kryoflux.com/"

  livecheck do
    url "https://www.kryoflux.com/?page=download"
    strategy :page_match
    regex(%r{href=.*?/kryoflux_(\d+(?:\.\d+)*)_macosx\.zip}i)
  end

  pkg "kryoflux_#{version}_macosx/dtc/KryoFlux.mpkg"

  uninstall pkgutil: [
    "com.kryoflux.pkg.KryoFlux-UI",
    "com.kryoflux.usr.pkg",
    "com.kryoflux.Library.pkg",
  ]

  zap trash: "~/Library/Preferences/com.kryoflux.ui.plist"

  caveats do
    depends_on_java
  end
end
