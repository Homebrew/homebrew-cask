cask 'daedalus' do
  version '0.11.0'
  sha256 '6ad90da2053f06f9f0e35c2ae05a8620094b83c6a6a5401c201a1e5abcc22ae4'

  # update-cardano-mainnet.iohk.io was verified as official when first introduced to the cask
  url "https://update-cardano-mainnet.iohk.io/daedalus-#{version}-cardano-sl-1.3.0-mainnet-macos-2260.pkg"
  name 'Daedalus'
  homepage 'https://daedaluswallet.io/'

  pkg "daedalus-#{version}-cardano-sl-1.3.0-mainnet-macos-2260.pkg"

  uninstall pkgutil: 'org.Daedalus.pkg',
            delete:  '/Applications/Daedalus.app'

  zap trash: [
               '~/Library/Application Support/Daedalus',
               '~/Library/Preferences/com.electron.daedalus.helper.plist',
               '~/Library/Preferences/com.electron.daedalus.plist',
               '~/Library/Saved Application State/com.electron.daedalus.savedState',
             ]
end
