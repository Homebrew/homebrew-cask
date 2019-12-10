cask 'marginnote' do
  version '3.5.8003,1575364991'
  sha256 'aeea4a419b34ef40ac0930ff25bf5279e3d42de88331197f74cae0f3ce75ae0f'

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
