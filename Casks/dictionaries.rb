cask 'dictionaries' do
  version '1.3.3,305:1559998396'
  sha256 '730a524969d58c18434e797d15042f9e56d1ea365ebba85a7c3f7d5be3a9e409'

  # dl.devmate.com/io.dictionaries.Dictionaries was verified as official when first introduced to the cask
  url "https://dl.devmate.com/io.dictionaries.Dictionaries/#{version.after_comma.before_colon}/#{version.after_colon}/Dictionaries-#{version.after_comma.before_colon}.zip"
  appcast 'https://updates.devmate.com/io.dictionaries.Dictionaries.xml'
  name 'Dictionaries'
  homepage 'https://dictionaries.io/'

  app 'Dictionaries.app'
end
