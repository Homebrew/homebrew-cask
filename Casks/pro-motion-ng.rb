cask 'pro-motion-ng' do
  version '7.2.1'
  sha256 '6893524eaca881ec7833d460ddefc227c78e6274a968194d405ca97095c07acd'

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
