cask 'daedalus' do
  version '0.14.0,3.0.3:7144'
  sha256 '1849ced47172add9e5a34dc670921ebae0fc496bb771afe61006e961019cdd24'

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
