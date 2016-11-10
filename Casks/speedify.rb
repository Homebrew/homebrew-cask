cask 'speedify' do
  version :latest
  sha256 :no_check

  url 'https://downloads.speedify.com/speedify.php?platform=osx'
  name 'Speedify'
  homepage 'http://speedify.com'

  app 'Speedify.app'

  uninstall launchctl: 'me.connectify.SMJobBlessHelper'

  zap delete: '~/Library/Speedify'
end