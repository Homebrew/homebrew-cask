cask 'inkdrop' do
  version '3.22.4'
  sha256 '80348eb09d50bc6b4adc507746ca912c1700063fc0c0eb4c7b38c9c0d612a10b'

  # d3ip0rje8grhnl.cloudfront.net was verified as official when first introduced to the cask
  url "https://d3ip0rje8grhnl.cloudfront.net/v#{version}/Inkdrop-#{version}-Mac.zip"
  appcast 'https://doc.inkdrop.info/releases'
  name 'Inkdrop'
  homepage 'https://www.inkdrop.info/'

  app 'Inkdrop.app'

  zap trash: [
               '~/Library/Application Support/inkdrop',
               '~/Library/Saved Application State/info.pkpk.inkdrop.savedState',
               '~/Library/Caches/info.pkpk.inkdrop',
               '~/Library/Preferences/info.pkpk.inkdrop.plist',
               '~/Library/Preferences/info.pkpk.inkdrop.helper.plist',
             ]
end
