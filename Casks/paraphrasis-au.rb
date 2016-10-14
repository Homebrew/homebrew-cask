cask 'paraphrasis-au' do
  version '1.0.3'
  sha256 '02ca88a956466083edd1b9cbe3674d008d88bea4177114f560068afeadb52327'

  url "http://archive.virtualanalogy.com/Mac/Paraphrasis_#{version.no_dots}.pkg"
  name 'VirtualAnalogy Paraphrasis (AU)'
  homepage 'http://virtualanalogy.com/'

  pkg "Paraphrasis_#{version.no_dots}.pkg"

  uninstall pkgutil: 'com.virtualanalogy.pkg.paraphrasis'
end
