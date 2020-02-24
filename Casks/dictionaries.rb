cask 'dictionaries' do
  version '1.4,322:1577018334'
  sha256 'fefdddd3165a0cd53f201058b28ba365ced4f7be54bfcb7e6f0b41aa48e10143'

  # dl.devmate.com/io.dictionaries.Dictionaries was verified as official when first introduced to the cask
  url "https://dl.devmate.com/io.dictionaries.Dictionaries/#{version.after_comma.before_colon}/#{version.after_colon}/Dictionaries-#{version.after_comma.before_colon}.zip"
  appcast 'https://updates.devmate.com/io.dictionaries.Dictionaries.xml'
  name 'Dictionaries'
  homepage 'https://dictionaries.io/'

  app 'Dictionaries.app'
end
