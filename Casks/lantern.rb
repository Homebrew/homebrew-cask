cask 'lantern' do
  version :latest
  sha256 :no_check

  # amazonaws.com/lantern was verified as official when first introduced to the cask
  url 'https://s3.amazonaws.com/lantern/lantern-installer-beta.dmg'
  name 'Lantern'
  homepage 'https://getlantern.org/'

  app 'Lantern.app'

  uninstall quit:      'com.getlantern.lantern',
            launchctl: 'org.getlantern'

  zap delete: [
                '~/Library/Application Support/Lantern',
                '~/Library/Logs/Lantern',
              ]
end
