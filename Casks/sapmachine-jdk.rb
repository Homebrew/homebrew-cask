cask 'sapmachine-jdk' do
  version '11,28-1'
  sha256 '0499c2b6e46d95acfb89704ccb2d012e2a8cdbbaaad91524147d9b86aeff207e'

  url "https://github.com/SAP/SapMachine/releases/download/sapmachine-#{version.before_comma}+#{version.after_comma}/sapmachine-jdk-#{version.before_comma}+#{version.after_comma.split('-').first}_osx-x64_bin.tar.gz"
  appcast "https://sap.github.io/SapMachine/latest/#{version.before_comma}"
  name 'SapMachine JDK'
  homepage 'https://github.com/SAP/SapMachine'

  postflight do
    system_command '/bin/mv',
                   args: ['-f', '--', "#{staged_path}/sapmachine-jdk-#{version.before_comma}.jdk",
                          "/Library/Java/JavaVirtualMachines/sapmachine-jdk-#{version.before_comma}.jdk"],
                   sudo: true

    system_command '/bin/mkdir',
                   args: ['-p', '--', "/Library/Java/JavaVirtualMachines/sapmachine-jdk-#{version.before_comma}.jdk/Contents/Home/bundle/Libraries"],
                   sudo: true

    system_command '/bin/ln',
                   args: ['-nsf', '--', "/Library/Java/JavaVirtualMachines/sapmachine-jdk-#{version.before_comma}.jdk/Contents/Home/lib/server/libjvm.dylib",
                          "/Library/Java/JavaVirtualMachines/sapmachine-jdk-#{version.before_comma}.jdk/Contents/Home/bundle/Libraries/libserver.dylib"],
                   sudo: true
  end

  uninstall delete: "/Library/Java/JavaVirtualMachines/sapmachine-jdk-#{version.before_comma}.jdk"
end
