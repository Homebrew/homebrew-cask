cask 'apache-netbeans' do
  version '9.0'
  sha256 'f5c2a5b74eea3a6d321f765d20e03c04f78243eb92c4707d80c282a80410c3a3'

  url "https://www-us.apache.org/dist/incubator/netbeans/incubating-netbeans-java/incubating-#{version}/incubating-netbeans-java-#{version}-bin.zip"
  name 'Apache NetBeans'
  homepage 'https://netbeans.apache.org/'

  artifact '.', target: "#{appdir}/NetBeans/NetBeans #{version.major}.app/Contents/Resources/"

  postflight do
    system_command '/bin/mkdir',
                   args: ['-p', '--', "#{appdir}/NetBeans/NetBeans #{version.major}.app/Contents/MacOS"],
                   sudo: true

    system_command '/usr/libexec/PlistBuddy',
                   args: ['-c', "Add :CFBundleName string \"NetBeans #{version.major}\"",
                          "#{appdir}/NetBeans/NetBeans #{version.major}.app/Contents/Info.plist"],
                   sudo: true
    system_command '/usr/libexec/PlistBuddy',
                   args: ['-c', "Add :CFBundleVersion string \"#{version.major}\"",
                          "#{appdir}/NetBeans/NetBeans #{version.major}.app/Contents/Info.plist"],
                   sudo: true
    system_command '/usr/libexec/PlistBuddy',
                   args: ['-c', 'Add :CFBundleExecutable string "netbeans"',
                          "#{appdir}/NetBeans/NetBeans #{version.major}.app/Contents/Info.plist"],
                   sudo: true
    system_command '/usr/libexec/PlistBuddy',
                   args: ['-c', 'Add :CFBundlePackageType string "APPL"',
                          "#{appdir}/NetBeans/NetBeans #{version.major}.app/Contents/Info.plist"],
                   sudo: true
    system_command '/usr/libexec/PlistBuddy',
                   args: ['-c', "Add :CFBundleShortVersionString string \"#{version.major}\"",
                          "#{appdir}/NetBeans/NetBeans #{version.major}.app/Contents/Info.plist"],
                   sudo: true
    system_command '/usr/libexec/PlistBuddy',
                   args: ['-c', "Add :CFBundleIdentifier string \"org.apache.netbeans.baseide.#{version.major}\"",
                          "#{appdir}/NetBeans/NetBeans #{version.major}.app/Contents/Info.plist"],
                   sudo: true
    system_command '/usr/libexec/PlistBuddy',
                   args: ['-c', 'Add :CFBundleSignature string "NETB"',
                          "#{appdir}/NetBeans/NetBeans #{version.major}.app/Contents/Info.plist"],
                   sudo: true
    system_command '/usr/libexec/PlistBuddy',
                   args: ['-c', 'Add :CFBundleInfoDictionaryVersion string "6.0"',
                          "#{appdir}/NetBeans/NetBeans #{version.major}.app/Contents/Info.plist"],
                   sudo: true
    system_command '/usr/libexec/PlistBuddy',
                   args: ['-c', 'Add :CFBundleIconFile string "netbeans/nb/netbeans.icns"',
                          "#{appdir}/NetBeans/NetBeans #{version.major}.app/Contents/Info.plist"],
                   sudo: true
    system_command '/usr/libexec/PlistBuddy',
                   args: ['-c', 'Add :CFBundleDocumentTypes array',
                          "#{appdir}/NetBeans/NetBeans #{version.major}.app/Contents/Info.plist"],
                   sudo: true
    system_command '/usr/libexec/PlistBuddy',
                   args: ['-c', 'Add :CFBundleDocumentTypes: dict',
                          "#{appdir}/NetBeans/NetBeans #{version.major}.app/Contents/Info.plist"],
                   sudo: true
    system_command '/usr/libexec/PlistBuddy',
                   args: ['-c', 'Add :CFBundleDocumentTypes:0:CFBundleTypeName string "public.shell-script"',
                          "#{appdir}/NetBeans/NetBeans #{version.major}.app/Contents/Info.plist"],
                   sudo: true
    system_command '/usr/libexec/PlistBuddy',
                   args: ['-c', 'Add :CFBundleDocumentTypes:0:CFBundleTypeRole string "Editor"',
                          "#{appdir}/NetBeans/NetBeans #{version.major}.app/Contents/Info.plist"],
                   sudo: true
    system_command '/usr/libexec/PlistBuddy',
                   args: ['-c', 'Add :CFBundleDocumentTypes:0:LSItemContentTypes array',
                          "#{appdir}/NetBeans/NetBeans #{version.major}.app/Contents/Info.plist"],
                   sudo: true
    system_command '/usr/libexec/PlistBuddy',
                   args: ['-c', 'Add :CFBundleDocumentTypes:0:LSItemContentTypes: string "public.shell-script"',
                          "#{appdir}/NetBeans/NetBeans #{version.major}.app/Contents/Info.plist"],
                   sudo: true
    system_command '/usr/libexec/PlistBuddy',
                   args: ['-c', 'Add :NSHighResolutionCapable bool true',
                          "#{appdir}/NetBeans/NetBeans #{version.major}.app/Contents/Info.plist"],
                   sudo: true
    system_command '/usr/libexec/PlistBuddy',
                   args: ['-c', 'Add :NSSupportsAutomaticGraphicsSwitching bool true',
                          "#{appdir}/NetBeans/NetBeans #{version.major}.app/Contents/Info.plist"],
                   sudo: true

    system_command '/bin/ln',
                   args: ['-s', '--', "#{appdir}/NetBeans/NetBeans #{version.major}.app/Contents/Resources/netbeans/bin/netbeans",
                          "#{appdir}/NetBeans/NetBeans #{version.major}.app/Contents/MacOS/netbeans"],
                   sudo: true
  end

  uninstall_postflight do
    system_command '/bin/rmdir',
                   args: ['--', "#{appdir}/NetBeans/NetBeans #{version.major}.app/Contents/"],
                   sudo: true
    system_command '/bin/rmdir',
                   args: ['--', "#{appdir}/NetBeans/NetBeans #{version.major}.app/"],
                   sudo: true
    system_command '/bin/rmdir',
                   args: ['--', "#{appdir}/NetBeans/"],
                   sudo: true
  end

  uninstall delete: [
                      "#{appdir}/NetBeans/NetBeans #{version.major}.app/Contents/MacOS/netbeans",
                      "#{appdir}/NetBeans/NetBeans #{version.major}.app/Contents/Info.plist",
                      "#{appdir}/NetBeans/.DS_Store", # this is sometimes created by finder, so...
                    ],
            rmdir:  "#{appdir}/NetBeans/NetBeans #{version.major}.app/Contents/MacOS/"

  caveats do
    depends_on_java
  end
end
