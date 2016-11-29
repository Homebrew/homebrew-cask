cask 'easyfind' do
  version '4.9.3'
  sha256 'eb57b21fa28a84116072e80a4c19b0340d5879f407e9f16bf606760b19e647ed'

  # amazonaws.com/DTWebsiteSupport was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/DTWebsiteSupport/download/freeware/easyfind/#{version}/EasyFind.app.zip"
  name 'EasyFind'
  homepage 'http://www.devontechnologies.com/download/products.html'

  app 'EasyFind.app'
end
