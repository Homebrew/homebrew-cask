cask "dictcc-en-de-dictionary-plugin" do
  version "2011-05-26"
  sha256 :no_check

  url "https://www1.dict.cc/download/macosx10.6_dict.cc_dictionary.pkg"
  name "dict.cc English-German dictionary plugin"
  homepage "https://www.dict.cc/?s=about%3Awordlist"

  deprecate! date: "2024-07-10", because: :unmaintained

  pkg "macosx10.6_dict.cc_dictionary.pkg"

  uninstall pkgutil: "org.lipflip.dictcccDeutschenglischDictionary..*"

  caveats do
    requires_rosetta
  end
end
