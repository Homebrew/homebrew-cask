cask 'inkdrop' do
  version '3.10.6'
  sha256 '59a6d1780f65aa9d726c28a6cf37a9031bef2a13ecf41338616c02221021314e'

  # github.com/inkdropapp was verified as official when first introduced to the cask
  url "https://github.com/inkdropapp/releases/releases/download/v#{version}/Inkdrop-#{version}-Mac.zip"
  appcast 'https://github.com/inkdropapp/releases/releases.atom'
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
