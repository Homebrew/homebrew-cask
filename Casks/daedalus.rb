cask 'daedalus' do
  version '0.12.0,2.0.0:3788.1'
  sha256 '0239107d70f0510c041f3b7a499d1d87d88fc8dbac04838bfce7e4475bf8b375'

  # github.com/input-output-hk/daedalus was verified as official when first introduced to the cask
  url "https://github.com/input-output-hk/daedalus/releases/download/#{version.before_comma}/daedalus-#{version.before_comma}-cardano-sl-#{version.after_comma.before_colon}-mainnet-macos-#{version.after_comma.after_colon}.pkg"
  appcast 'https://github.com/input-output-hk/daedalus/releases.atom'
  name 'Daedalus'
  homepage 'https://daedaluswallet.io/'

  pkg "daedalus-#{version.before_comma}-cardano-sl-#{version.after_comma.before_colon}-mainnet-macos-#{version.after_comma.after_colon}.pkg"

  uninstall pkgutil: 'org.Daedalus.pkg',
            delete:  '/Applications/Daedalus.app'

  zap trash: [
               '~/Library/Application Support/Daedalus',
               '~/Library/Preferences/com.electron.daedalus.helper.plist',
               '~/Library/Preferences/com.electron.daedalus.plist',
               '~/Library/Saved Application State/com.electron.daedalus.savedState',
             ]
end
