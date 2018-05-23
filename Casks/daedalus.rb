cask 'daedalus' do
  version '1.1.1.952'
  sha256 'f5262107b30f5617018fec7bff42982484f3af3623f8169d98500dfb7d495b84'

  # amazonaws.com/update-cardano-mainnet.iohk.io was verified as official when first introduced to the cask
  url "https://s3-ap-southeast-1.amazonaws.com/update-cardano-mainnet.iohk.io/Daedalus-installer-#{version}.pkg"
  name 'Daedalus'
  homepage 'https://daedaluswallet.io/'

  pkg "Daedalus-installer-#{version}.pkg"

  uninstall pkgutil: 'org.daedalus.pkg',
            delete:  '/Applications/Daedalus.app'

  zap trash: [
               '~/Library/Application Support/Daedalus',
               '~/Library/Preferences/com.electron.daedalus.helper.plist',
               '~/Library/Preferences/com.electron.daedalus.plist',
               '~/Library/Saved Application State/com.electron.daedalus.savedState',
             ]
end
