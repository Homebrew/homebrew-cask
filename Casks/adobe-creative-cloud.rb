cask "adobe-creative-cloud" do
  arch = Hardware::CPU.intel? ? "osx10" : "macarm64"

  version "5.6.5.58"

  if Hardware::CPU.intel?
    sha256 "c02894054970feaf3e0e732c9fe75635217b3d27b1ef4c7821d4602b33988ebf"
  else
    sha256 "4bdf3f0030a6bb5a19649dcb91b090d5a167f5931f71d12c14cc9711f1b75ee6"
  end

  url "https://ccmdl.adobe.com/AdobeProducts/KCCC/CCD/#{version.major_minor_patch.dots_to_underscores}/#{arch}/ACCCx#{version.dots_to_underscores}.dmg"
  name "Adobe Creative Cloud"
  desc "Collection of apps and services for photography, design, video, web, and UX"
  homepage "https://www.adobe.com/creativecloud.html"

  livecheck do
    url "https://helpx.adobe.com/creative-cloud/release-note/cc-release-notes.html"
    regex(/Version\s*(\d+(?:\.\d+)+),?\s+(?:(?:was\s+)?released|for\s+macOS)/i)
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
            signal:       [["QUIT", "com.adobe.accmac"]],
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
              "/Library/Internet Plug-Ins/AdobeAAMDetect.plugin",
              "/Library/LaunchDaemons/com.adobe.agsservice.plist",
              "/Library/Logs/CreativeCloud",
              "/Library/Preferences/com.adobe.headlights*.plist",
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
