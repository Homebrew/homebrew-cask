cask 'lantern' do
  version :latest
  sha256 :no_check

  url 'https://s3.amazonaws.com/lantern/lantern-installer-beta.dmg'
  name 'Lantern'
  homepage 'https://getlantern.org/'
  license :oss

  app 'Lantern.app'

  uninstall quit: 'com.getlantern.lantern'

  zap delete: [
                '~/Library/Application Support/Lantern',
                '~/Library/Logs/Lantern',
              ]
end
