cask 'marginnote' do
  version '3.2.2002,1548595581'
  sha256 '59bb20ce2e0b6048a966e71236c87484cc63b5bdc8ec16d3d2bd51daef8d5593'

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
