cask 'marginnote' do
  version '3.4.5004,1568434627'
  sha256 '65c504ab63bc7af7f575a9569b20e7864fe2549729c4c192b1275a96f57dc49f'

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
