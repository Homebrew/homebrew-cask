cask 'dictionaries' do
  version '1.3.1,296:1552996116'
  sha256 'ad5d291f78710df00045b0b8250b6c1f0454fa7ba781d8b04c18680fe6870228'

  # dl.devmate.com/io.dictionaries.Dictionaries was verified as official when first introduced to the cask
  url "https://dl.devmate.com/io.dictionaries.Dictionaries/#{version.after_comma.before_colon}/#{version.after_colon}/Dictionaries-#{version.after_comma.before_colon}.zip"
  appcast 'https://updates.devmate.com/io.dictionaries.Dictionaries.xml'
  name 'Dictionaries'
  homepage 'https://dictionaries.io/'

  app 'Dictionaries.app'
end
