cask 'inkdrop' do
  version '4.6.0'
  sha256 'abf73c9b3218f936b452104b2384c2c6ce2d922a827be6ae77e7030bdc4f5d5a'

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
