cask 'pro-motion-ng' do
  version '7.1.8'
  sha256 '270dda804ebb11258ee0694ece791848f76686c68d796786f2a04e8530c89fb0'

  url 'https://www.cosmigo.com/wp-content/uploads/pro-motion-ng-mac-os.zip'
  appcast 'https://www.cosmigo.com/pixel_animation_software/downloads/mac_linux_downloads'
  name 'Pro Motion NG'
  homepage 'https://www.cosmigo.com/pixel_animation_software'

  app 'Pro Motion NG.app'

  postflight do
    set_permissions "#{appdir}/Pro Motion NG.app/Contents/MacOS/startwine", 'a+x'
  end

  uninstall_preflight do
    SystemCommand.run '/usr/bin/pkill',
                      args: ['-15', '-f', 'Pro Motion NG/pmotion\.exe']
  end

  zap trash: '~/Library/Application Support/com.cosmigo.promotionng'
end
