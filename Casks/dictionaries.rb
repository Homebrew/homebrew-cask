cask 'dictionaries' do
  version '1.2.7,252:1540657812'
  sha256 'ab8e73f434e2bc15076bc9b6a160b616d7220c759d4f99d8e8dcb46b07f5d2dc'

  # dl.devmate.com/io.dictionaries.Dictionaries was verified as official when first introduced to the cask
  url "https://dl.devmate.com/io.dictionaries.Dictionaries/#{version.after_comma.before_colon}/#{version.after_colon}/Dictionaries-#{version.after_comma.before_colon}.zip"
  appcast 'https://updates.devmate.com/io.dictionaries.Dictionaries.xml'
  name 'Dictionaries'
  homepage 'https://dictionaries.io/'

  app 'Dictionaries.app'
end
