cask "kryoflux-dtc" do
  version "2.62"
  sha256 "f4aac0ee77dd8576be686516eaef97dd468ce2f2af099fb6ae2b156eef614350"

  url "https://www.kryoflux.com/download/kryoflux_#{version}_macosx.zip"
  appcast "https://www.kryoflux.com/?page=download"
  name "KryoFlux DTC"
  desc "Host software command-line interface"
  homepage "https://www.kryoflux.com/"

  pkg "kryoflux_#{version}_macosx/dtc/KryoFlux.mpkg",
      choices: [
        {
          "choiceIdentifier" => "installer_choice_1",
          "choiceAttribute"  => "selected",
          "attributeSetting" => 1,
        },
        {
          "choiceIdentifier" => "installer_choice_2",
          "choiceAttribute"  => "selected",
          "attributeSetting" => 1,
        },
        {
          "choiceIdentifier" => "installer_choice_3",
          "choiceAttribute"  => "selected",
          "attributeSetting" => 0,
        },
      ]

  uninstall pkgutil: ["com.kryoflux.usr.pkg", "com.kryoflux.Library.pkg"]
end
