cask 'inkdrop' do
  version '4.5.2'
  sha256 'bec5d942b07cb841e848d44689f661dc9888de763320d8f483c1468775423157'

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
