cask 'daedalus' do
  version '0.13.1,3.0.1:5130'
  sha256 '92a4a72d4cdacdf256f061e779d380e6ba6479f0c9a085021c030da98f4bbdef'

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
