cask 'oracle-jdk8' do
  version '8u202,b08:1961070e4c9b4e26a04e7f5a083f551e'
  sha256 'b41367948cf99ca0b8d1571f116b7e3e322dd1ebdfd4d390e959164d75b97c20'

  url "https://download.oracle.com/otn-pub/java/jdk/#{version.before_comma}-#{version.after_comma.before_colon}/#{version.after_colon}/jdk-#{version.before_comma}-macosx-x64.dmg",
      cookies: {
                 'oraclelicense' => 'accept-securebackup-cookie',
               }
  name 'Java 8 Standard Edition Development Kit'
  homepage 'https://www.oracle.com/technetwork/java/javase/overview/index.html'

  # auto_updates true: JDK does not auto-update
  depends_on macos: '>= :yosemite'

  pkg 'JDK 8 Update 202.pkg'

  postflight do
    system_command '/bin/ln',
                   args: ['-nsf', '--', "/Library/Java/JavaVirtualMachines/jdk-#{version.before_comma}.jdk/Contents/Home", '/Library/Java/Home'],
                   sudo: true
    system_command '/bin/ln',
                   args: ['-nsf', '--', "/Library/Java/JavaVirtualMachines/jdk-#{version.before_comma}.jdk/Contents/MacOS", '/Library/Java/MacOS'],
                   sudo: true
    system_command '/bin/mkdir',
                   args: ['-p', '--', "/Library/Java/JavaVirtualMachines/jdk-#{version.before_comma}.jdk/Contents/Home/bundle/Libraries"],
                   sudo: true
    system_command '/bin/ln',
                   args: ['-nsf', '--', "/Library/Java/JavaVirtualMachines/jdk-#{version.before_comma}.jdk/Contents/Home/lib/server/libjvm.dylib", "/Library/Java/JavaVirtualMachines/jdk-#{version.before_comma}.jdk/Contents/Home/bundle/Libraries/libserver.dylib"],
                   sudo: true
  end

  uninstall pkgutil: "com.oracle.jdk#{version.before_comma}",
            delete:  [
                       "/Library/Java/JavaVirtualMachines/jdk-#{version.before_comma}.jdk/Contents",
                       '/Library/Java/Home',
                       '/Library/Java/MacOS',
                     ],
            rmdir:   "/Library/Java/JavaVirtualMachines/jdk-#{version.before_comma}.jdk"

  caveats do
    license 'https://www.oracle.com/technetwork/java/javase/terms/license/javase-license.html'
  end
end
