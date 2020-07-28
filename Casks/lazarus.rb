cask "lazarus" do
  version "2.0.10"
  sha256 "13c000bb30cbaa73e76d3b5b2abbc55b219bd6c4443aecc158b8b51a5fceef5f"

  # sourceforge.net/lazarus/ was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/lazarus/Lazarus%20macOS%20x86-64/Lazarus%20#{version}/Lazarus-#{version}-x86_64-macosx.pkg"
  appcast "https://sourceforge.net/projects/lazarus/rss"
  name "Lazarus"
  homepage "https://www.lazarus-ide.org/"

  depends_on formula: "fpc"
  depends_on cask: "fpcsrc"

  pkg "Lazarus-#{version}-x86_64-macosx.pkg"

  uninstall pkgutil: "org.lazarus-ide.pkg.LazarusIDE",
            delete:  "/Applications/Lazarus.app"
end
