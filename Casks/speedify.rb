cask 'speedify' do
  version :latest
  sha256 :no_check

  url 'https://downloads.speedify.com/speedify.php?platform=osx'
  name 'Speedify'
  homepage 'https://speedify.com/'

  app 'Speedify.app'

  uninstall launchctl: [
                         'me.connectify.SMJobBlessHelper',
                         'SwitchboardService',
                         'SpeedifyService',
                       ],
            script:    "#{appdir}/Speedify.app/Contents/Resources/uninstall-speedify-service.sh"

  zap trash: '~/Library/Speedify'
end
