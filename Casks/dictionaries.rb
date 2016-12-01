cask 'dictionaries' do
  version :latest
  sha256 :no_check

  # dl.devmate.com was verified as official when first introduced to the cask
  url 'https://dl.devmate.com/io.dictionaries.Dictionaries/Dictionaries.zip'
  name 'Dictionaries'
  homepage 'https://dictionaries.io/'

  app 'Dictionaries.app'
end
