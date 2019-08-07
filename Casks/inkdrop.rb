cask 'inkdrop' do
  version '4.3.1'
  sha256 '96f00af112a778d7b17297451f09d52674e4cb603cdfad27bef4a9e87edbdd45'

  # d3ip0rje8grhnl.cloudfront.net was verified as official when first introduced to the cask
  url "https://d3ip0rje8grhnl.cloudfront.net/v#{version}/Inkdrop-#{version}-Mac.zip"
  appcast 'https://api.inkdrop.app/update/links'
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
