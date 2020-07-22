cask 'daedalus-mainnet' do
  version '1.1.0,12849'
  sha256 '73c69357b568438b37c83a77eb9e5f79f683255de4d49bc9d0f84a3b4183ab34'

  # update-cardano-mainnet.iohk.io/ was verified as official when first introduced to the cask
  url "https://update-cardano-mainnet.iohk.io/daedalus-#{version.before_comma}-mainnet-#{version.after_comma}.pkg"
  name 'Daedalus Mainnet'
  homepage 'https://daedaluswallet.io/'

  depends_on macos: '>= :high_sierra'

  pkg "daedalus-#{version.before_comma}-mainnet-#{version.after_comma}.pkg"

  uninstall pkgutil: 'org.Daedalusmainnet.pkg'

  zap trash: [
               '~/Library/Application Support/Daedalus Mainnet',
               '~/Library/Preferences/com.electron.daedalus-mainnet.plist',
               '~/Library/Saved Application State/com.electron.daedalus-mainnet.savedState',
             ]
end
