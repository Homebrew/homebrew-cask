cask 'sapmachine' do
  version '11,28'
  sha256 '0499c2b6e46d95acfb89704ccb2d012e2a8cdbbaaad91524147d9b86aeff207e'

  url "https://github.com/SAP/SapMachine/releases/download/sapmachine-#{version.before_comma}+#{version.after_comma}-1/sapmachine-jdk-#{version.before_comma}+#{version.after_comma}_osx-x64_bin.tar.gz"
  appcast 'https://sap.github.io/SapMachine/latest/11'
  name 'SapMachine'
  homepage 'https://github.com/SAP/SapMachine'

  artifact "sapmachine-jdk-#{version.before_comma}.jdk/", target: "/Library/Java/JavaVirtualMachines/sapmachine-jdk-#{version.before_comma}.jdk"

  postflight do
    system_command '/usr/libexec/PlistBuddy',
                   args: ['-c', 'Add :JavaVM:JVMCapabilities: string BundledApp', "/Library/Java/JavaVirtualMachines/sapmachine-jdk-#{version.before_comma}.jdk/Contents/Info.plist"],
                   sudo: true
    system_command '/usr/libexec/PlistBuddy',
                   args: ['-c', 'Add :JavaVM:JVMCapabilities: string JNI', "/Library/Java/JavaVirtualMachines/sapmachine-jdk-#{version.before_comma}.jdk/Contents/Info.plist"],
                   sudo: true
    system_command '/usr/libexec/PlistBuddy',
                   args: ['-c', 'Add :JavaVM:JVMCapabilities: string WebStart', "/Library/Java/JavaVirtualMachines/sapmachine-jdk-#{version.before_comma}.jdk/Contents/Info.plist"],
                   sudo: true
    system_command '/usr/libexec/PlistBuddy',
                   args: ['-c', 'Add :JavaVM:JVMCapabilities: string Applets', "/Library/Java/JavaVirtualMachines/sapmachine-jdk-#{version.before_comma}.jdk/Contents/Info.plist"],
                   sudo: true
    system_command '/bin/ln',
                   args: ['-nsf', '--', "/Library/Java/JavaVirtualMachines/sapmachine-jdk-#{version.before_comma}.jdk/Contents/Home", '/Library/Java/Home'],
                   sudo: true
    system_command '/bin/ln',
                   args: ['-nsf', '--', "/Library/Java/JavaVirtualMachines/sapmachine-jdk-#{version.before_comma}.jdk/Contents/MacOS", '/Library/Java/MacOS'],
                   sudo: true
  end
end
