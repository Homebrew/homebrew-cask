cask 'marginnote' do
  version '3.5.9003,1576017290'
  sha256 '4a53a85612feea0da868ddb356a9214af48bb2ea239da3856cbc64803b054163'

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
