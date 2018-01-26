cask 'daedalus' do
  version '1.0.3619'
  sha256 'fd644fe565e92adc13bc004bf18d4ec9591d79aa7f69fa63ee008def47fa1770'

  # amazonaws.com/daedalus-travis was verified as official when first introduced to the cask
  url "https://s3.eu-central-1.amazonaws.com/daedalus-travis/Daedalus-installer-#{version}.pkg"
  name 'Daedalus'
  homepage 'https://daedaluswallet.io/'

  pkg "Daedalus-installer-#{version}.pkg"

  uninstall pkgutil: 'org.daedalus.pkg'

  zap trash: [
               '~/Library/Application Support/Daedalus',
               '~/Library/Preferences/com.electron.daedalus.helper.plist',
               '~/Library/Preferences/com.electron.daedalus.plist',
               '~/Library/Saved Application State/com.electron.daedalus.savedState',
             ]
end
