cask 'dictionaries' do
  version '1.3.2,301:1555346620'
  sha256 'ef661eae20858556282831391e49a57e31baec0a13081229ac7f69e8b4795909'

  # dl.devmate.com/io.dictionaries.Dictionaries was verified as official when first introduced to the cask
  url "https://dl.devmate.com/io.dictionaries.Dictionaries/#{version.after_comma.before_colon}/#{version.after_colon}/Dictionaries-#{version.after_comma.before_colon}.zip"
  appcast 'https://updates.devmate.com/io.dictionaries.Dictionaries.xml'
  name 'Dictionaries'
  homepage 'https://dictionaries.io/'

  app 'Dictionaries.app'
end
