cask 'lantern' do
  version :latest
  sha256 :no_check

  # raw.githubusercontent.com/getlantern/lantern-binaries was verified as official when first introduced to the cask
  url 'https://raw.githubusercontent.com/getlantern/lantern-binaries/master/lantern-installer.dmg'
  name 'Lantern'
  homepage 'https://getlantern.org/'

  app 'Lantern.app'

  uninstall quit:      'com.getlantern.lantern',
            launchctl: 'org.getlantern'

  zap trash: [
               '~/Library/Application Support/Lantern',
               '~/Library/Logs/Lantern',
             ]
end
