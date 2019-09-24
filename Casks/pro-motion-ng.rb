cask 'pro-motion-ng' do
  version '7.2.2'
  sha256 '19945a13e275234a459e32b18b1e7a17abf172f3584d7d07d109e2f05d7e226b'

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
