cask 'dictcc-en-de-dictionary-plugin' do
  version :latest
  sha256 :no_check

  # dict.cc was verified as official when first introduced to the cask
  url 'http://www1.dict.cc/download/macosx10.6_dict.cc_dictionary.pkg'
  name 'dict.cc English-German dictionary plugin'
  homepage 'https://lipflip.org/articles/dictcc-dictionary-plugin'

  pkg 'macosx10.6_dict.cc_dictionary.pkg'

  uninstall pkgutil: 'org.lipflip.dictcccDeutschenglischDictionary..*'
end
