cask 'adobe-creative-cloud' do
  version '5.2.0.436'
  sha256 'c0591e474e30d6451e190ffd8caff8622260bedaaac00278ddbf24f81aa127d1'

  url "https://ccmdl.adobe.com/AdobeProducts/KCCC/CCD/#{version.major_minor.dots_to_underscores}/osx10/ACCCx#{version.dots_to_underscores}.dmg"
  name 'Adobe Creative Cloud'
  homepage 'https://creative.adobe.com/products/creative-cloud'

  installer script: {
                      executable:   "#{staged_path}/Install.app/Contents/MacOS/Install",
                      args:         ['--mode=silent'],
                      sudo:         true,
                      print_stderr: false,
                    }

  uninstall_preflight do
    set_ownership '/Library/Application Support/Adobe'
  end

  uninstall_postflight do
    stdout, * = system_command '/bin/launchctl', args: ['print', "gui/#{Process.uid}"]
    ccx_processes = stdout.lines.grep(%r{com\.adobe\.CCXProcess\.\d{5}}) { $& }.uniq
    ccx_processes.each { |id| system '/bin/launchctl', 'bootout', "gui/#{Process.uid}/#{id}" }
  end

  uninstall early_script: {
                            executable:   '/usr/bin/pluginkit',
                            args:         ['-r', '/Applications/Utilities/Adobe Sync/CoreSync/Core Sync.app/Contents/PlugIns/ACCFinderSync.appex'],
                            must_succeed: false,
                            print_stderr: false,
                          },
            launchctl:    [
                            'Adobe_Genuine_Software_Integrity_Service',
                            'com.adobe.AdobeCreativeCloud',
                            'com.adobe.acc.installer',
                            'com.adobe.acc.installer.v2',
                            'com.adobe.ccxprocess',
                          ],
            quit:         'com.adobe.acc.AdobeCreativeCloud',
            signal:       [['QUIT', 'com.adobe.accmac']],
            script:       {
                            executable:   '/usr/bin/pkill',
                            args:         ['Adobe Desktop Service', 'AdobeIPCBroker', 'AdobeCRDaemon'],
                            must_succeed: false,
                          },
            delete:       [
                            "#{appdir}/Adobe Creative Cloud/*Adobe Creative Cloud",
                            "#{appdir}/Adobe Creative Cloud/Icon?",
                            "#{appdir}/Adobe Creative Cloud/.Uninstall*",
                            '/Applications/Utilities/Adobe Creative Cloud*',
                            '/Applications/Utilities/Adobe Application Manager',
                            '/Applications/Utilities/Adobe Sync',
                            '/Applications/Utilities/Adobe Installers/Uninstall Adobe Creative Cloud',
                            '/Applications/Utilities/Adobe Installers/.Uninstall*',
                            '/Library/Application Support/Adobe/CEP/extensions/CC_*',
                            '/Library/Application Support/Adobe/CEP/extensions/com.adobe.ccx.*',
                            '/Library/Application Support/Adobe/Adobe Desktop Common',
                            '/Library/Application Support/Adobe/AdobeApplicationManager',
                            '/Library/Application Support/Adobe/AdobeGC*',
                            '/Library/Application Support/Adobe/*[Ii]nstall*',
                            '/Library/Application Support/Adobe/ADCRefs',
                            '/Library/Application Support/Adobe/caps',
                            '/Library/Application Support/Adobe/OOBE',
                            '/Library/Application Support/Adobe/PCF',
                            '/Library/Application Support/Adobe/SL*',
                            '/Library/Application Support/Adobe/Vulcan',
                            '/Library/Application Support/regid.*.com.adobe',
                            '~/Library/Application Support/Adobe/AAMUpdater',
                            '~/Library/Application Support/Adobe/ExtensibilityLibrary',
                            '~/Library/Application Support/Adobe/FloodGate',
                            '~/Library/Application Support/Adobe/.adobelicnotification',
                            '~/Library/Application Support/CrashReporter/AdobeCRDaemon_*.plist',
                            '~/Library/Application Scripts/com.adobe.accmac.ACCFinderSync',
                            '~/Library/*/Adobe/CoreSync',
                            '/Library/*/com.adobe.acc*',
                            '~/Library/*/com.adobe.acc*',
                            '/Library/Preferences/com.adobe.headlights*.plist',
                            '~/Library/Preferences/com.adobe.crashreporter.plist',
                            '~/Library/Preferences/Adobe/.[A-Z0-9]???????????',
                            '/Library/LaunchDaemons/com.adobe.agsservice.plist',
                            '~/Library/LaunchAgents/com.adobe.ccxprocess.plist',
                            '~/Library/Group Containers/Adobe-Hub-App',
                            '/Library/Internet Plug-Ins/AdobeAAMDetect.plugin',
                            '~/Creative Cloud Files/Icon?',
                            '/Users/Shared/Adobe/Installer',
                            '/Users/Shared/Adobe/OOBE',
                          ],
            rmdir:        [
                            "#{appdir}/Adobe Creative Cloud",
                            '/Applications/Utilities/Adobe Installers',
                            '/Library/Application Support/Adobe{/CEP{/extensions,},}',
                            '/Library/*/Adobe',
                            '~/Library/*/Adobe',
                            '~/Creative Cloud Files',
                            '/Users/Shared/Adobe',
                          ]

  zap trash: [
               '/Library/Application Support/Adobe/Extension Manager CC',
               '~/Library/Application Support/Adobe/Extension Manager CC',
               '~/Library/Application Support/Adobe/OOBE',
               '/Library/Application Support/Adobe/Creative Cloud Libraries',
               '/Library/Application Support/Adobe/Adobe PCD',
               '/Library/Logs/CreativeCloud',
               '~/Library/Logs/CreativeCloud',
               '~/Library/Logs/ACC*.log',
               '~/Library/Logs/PDApp*.log',
               '~/Library/Logs/AdobeDownload.log',
               '~/Library/Logs/AdobeIPCBroker*.log',
               '~/Library/Logs/CoreSyncInstall.log',
               '~/Creative Cloud Files',
             ],
      rmdir: [
               '/Library/Application Support/Adobe',
               '~/Library/Application Support/Adobe',
               '/Library/Logs/Adobe',
               '~/Library/Logs/Adobe',
             ]
end
