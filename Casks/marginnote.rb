cask 'marginnote' do
  version '3.3.1007,1556292529'
  sha256 '765e0e0a4c629dfb15868a4c12216f3926dbd1b12a51bdc581b8f5f5f5ac50ae'

  # dl.devmate.com/QReader.MarginStudyMac was verified as official when first introduced to the cask
  url "https://dl.devmate.com/QReader.MarginStudyMac/#{version.before_comma}/#{version.after_comma}/MarginNote#{version.major}-#{version.before_comma}.zip"
  appcast 'https://updates.devmate.com/QReader.MarginStudyMac.xml'
  name 'MarginNote'
  homepage 'https://www.marginnote.com/'

  auto_updates true

  app "MarginNote #{version.major}.app"

  zap trash: [
               '~/Library/Application Support/QReader.MarginStudyMac',
               '~/Library/Containers/QReader.MarginStudyMac',
             ]
end
