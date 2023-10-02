cask "adobe-creative-cloud" do
  arch arm: "macarm64", intel: "osx10"

  version "6.0.0.571"
  sha256 arm:   "d1adc332344ab07ff85ecf85a94cd56977bcef937434636d63a8a805f2b7061c",
         intel: "0f2eda378bdc30c18cff65e78d17797952695754f645fd3b72b3c43984402eed"

  url "https://ccmdl.adobe.com/AdobeProducts/KCCC/CCD/#{version.major_minor.dots_to_underscores}/#{arch}/ACCCx#{version.dots_to_underscores}.dmg"
  name "Adobe Creative Cloud"
  desc "Collection of apps and services for photography, design, video, web, and UX"
  homepage "https://www.adobe.com/creativecloud.html"

  livecheck do
    url "https://ffc-static-cdn.oobesaas.adobe.com/features/v3/#{arch}/ccdConfig.xml"
    regex(/ccd\.fw\.update\.greenline\.latest.*?"version".*?"(\d+(?:\.\d+)+)"/i)
  end

  auto_updates true

  installer script: {
    executable:   "#{staged_path}/Install.app/Contents/MacOS/Install",
    args:         ["--mode=silent"],
    sudo:         true,
    print_stderr: false,
  }

  uninstall_preflight do
    set_ownership "/Library/Application Support/Adobe"
  end

  uninstall_postflight do
    stdout, * = system_command "/bin/launchctl", args: ["print", "gui/#{Process.uid}"]
    ccx_processes = stdout.lines.grep(/com\.adobe\.CCXProcess\.\d{5}/) { Regexp.last_match(0) }.uniq
    ccx_processes.each { |id| system "/bin/launchctl", "bootout", "gui/#{Process.uid}/#{id}" }
  end

  uninstall early_script: {
              executable:   "/usr/bin/pluginkit",
              args:         [
                "-r", "/Applications/Utilities/Adobe Sync/CoreSync/Core Sync.app/Contents/PlugIns/ACCFinderSync.appex"
              ],
              must_succeed: false,
              print_stderr: false,
            },
            launchctl:    [
              "Adobe_Genuine_Software_Integrity_Service",
              "com.adobe.AdobeCreativeCloud",
              "com.adobe.acc.installer",
              "com.adobe.acc.installer.v2",
              "com.adobe.ccxprocess",
            ],
            quit:         "com.adobe.acc.AdobeCreativeCloud",
            signal:       ["QUIT", "com.adobe.accmac"],
            script:       {
              executable:   "/usr/bin/pkill",
              args:         ["Adobe Desktop Service", "AdobeIPCBroker", "AdobeCRDaemon"],
              must_succeed: false,
            },
            delete:       [
              "#{appdir}/Adobe Creative Cloud/*Adobe Creative Cloud",
              "#{appdir}/Adobe Creative Cloud/.Uninstall*",
              "#{appdir}/Adobe Creative Cloud/Icon?",
              "/Applications/Utilities/Adobe Application Manager",
              "/Applications/Utilities/Adobe Creative Cloud*",
              "/Applications/Utilities/Adobe Installers/.Uninstall*",
              "/Applications/Utilities/Adobe Installers/Uninstall Adobe Creative Cloud",
              "/Applications/Utilities/Adobe Sync",
              "/Library/Internet Plug-Ins/AdobeAAMDetect.plugin",
              "/Library/LaunchDaemons/com.adobe.agsservice.plist",
            ],
            rmdir:        [
              "#{appdir}/Adobe Creative Cloud",
              "/Applications/Utilities/Adobe Installers",
              "/Library/*/Adobe",
              "/Library/Application Support/Adobe",
              "/Library/Application Support/Adobe{/CEP{/extensions,},}",
              "/Library/Logs/Adobe",
            ]

  zap trash: [
        "/Users/Shared/Adobe/Installer",
        "/Users/Shared/Adobe/OOBE",
        "/Library/*/com.adobe.acc*",
        "/Library/Application Support/Adobe/*[Ii]nstall*",
        "/Library/Application Support/Adobe/ADCRefs",
        "/Library/Application Support/Adobe/Adobe Desktop Common",
        "/Library/Application Support/Adobe/Adobe PCD",
        "/Library/Application Support/Adobe/AdobeApplicationManager",
        "/Library/Application Support/Adobe/AdobeGC*",
        "/Library/Application Support/Adobe/CEP/extensions/CC_*",
        "/Library/Application Support/Adobe/CEP/extensions/com.adobe.ccx.*",
        "/Library/Application Support/Adobe/Creative Cloud Libraries",
        "/Library/Application Support/Adobe/Extension Manager CC",
        "/Library/Application Support/Adobe/OOBE",
        "/Library/Application Support/Adobe/PCF",
        "/Library/Application Support/Adobe/SL*",
        "/Library/Application Support/Adobe/Vulcan",
        "/Library/Application Support/Adobe/caps",
        "/Library/Application Support/regid.*.com.adobe",
        "/Library/Logs/CreativeCloud",
        "/Library/Preferences/com.adobe.headlights*.plist",
        "~/Creative Cloud Files",
        "~/Creative Cloud Files/Icon?",
        "~/Library/*/Adobe/CoreSync",
        "~/Library/*/com.adobe.acc*",
        "~/Library/Application Scripts/com.adobe.accmac.ACCFinderSync",
        "~/Library/Application Support/Adobe/.adobelicnotification",
        "~/Library/Application Support/Adobe/AAMUpdater",
        "~/Library/Application Support/Adobe/ExtensibilityLibrary",
        "~/Library/Application Support/Adobe/Extension Manager CC",
        "~/Library/Application Support/Adobe/FloodGate",
        "~/Library/Application Support/Adobe/OOBE",
        "~/Library/Application Support/CrashReporter/AdobeCRDaemon_*.plist",
        "~/Library/Group Containers/Adobe-Hub-App",
        "~/Library/LaunchAgents/com.adobe.ccxprocess.plist",
        "~/Library/Logs/ACC*.log",
        "~/Library/Logs/AdobeDownload.log",
        "~/Library/Logs/AdobeIPCBroker*.log",
        "~/Library/Logs/CoreSyncInstall.log",
        "~/Library/Logs/CreativeCloud",
        "~/Library/Logs/PDApp*.log",
        "~/Library/Preferences/Adobe/.[A-Z0-9]???????????",
        "~/Library/Preferences/com.adobe.crashreporter.plist",

      ],
      rmdir: [
        "/Users/Shared/Adobe",
        "~/Creative Cloud Files",
        "~/Library/*/Adobe",
        "~/Library/Application Support/Adobe",
        "~/Library/Logs/Adobe",
      ]

  caveats do
    requires_rosetta
  end
end
