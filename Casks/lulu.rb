cask 'lulu' do
  version '1.1.2'
  sha256 '18fb1eab5003cf51ec6a4d8612a6a3d0e7e02f8165d06eb88cd637be527e5a16'

  # bitbucket.org/objective-see was verified as official when first introduced to the cask
  url "https://bitbucket.org/objective-see/deploy/downloads/LuLu_#{version}.zip"
  appcast 'https://objective-see.com/products/changelogs/LuLu.txt'
  name 'LuLu'
  homepage 'https://objective-see.com/products/lulu.html'

  depends_on macos: '>= :sierra'

  # Lulu's uninstall deletes its settings, so `brew cask upgrade` also does it
  # `postflight` and `uninstall_preflight` are trying to mitigate this by backing them up and restoring
  settings_dir = '/Library/Objective-See/LuLu'
  backup_settings_dir = '/tmp/Homebrew_tmp_LuLu_settings'

  postflight do
    FileUtils.cp_r(backup_setting_dir, settings_dir) if Dir.exist?(backup_settings_dir)
  end

  uninstall_preflight do
    settings_dir = '/Library/Objective-See/LuLu'
    backup_settings_dir = '/tmp/Homebrew_tmp_LuLu_settings'
    FileUtils.cp_r(settings_dir, backup_settings_dir)
    FileUtils.rm_r(backup_settings_dir)
  end

  uninstall script: {
                      executable: "#{staged_path}/Lulu Installer.app/Contents/MacOS/LuLu Installer",
                      args:       ['-uninstall'],
                      sudo:       true,
                    }

  zap trash: [
               '~/Library/Caches/com.objective-see.lulu',
               '~/Library/Caches/com.objective-see.luluHelper',
               '~/Library/Preferences/com.objective-see.lulu.plist',
               '~/Library/Preferences/com.objective-see.luluHelper.plist',
               '/Library/LaunchDaemons/com.objective-see.lulu.plist',
               '/Library/Logs/LuLu.log',
             ]

  caveats do
    kext
  end
end
