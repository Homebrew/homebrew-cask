cask 'sapmachine-jdk' do
  version '11.0.2'
  sha256 'c17526aca0891ab291916faeca7a6cdcef77d63de8acb8362c1af0eb95a9c680'

  url "https://github.com/SAP/SapMachine/releases/download/sapmachine-#{version}/sapmachine-jdk-#{version}_osx-x64_bin.tar.gz"
  appcast "https://sap.github.io/SapMachine/latest/#{version.major}"
  name 'SapMachine JDK'
  homepage 'https://github.com/SAP/SapMachine'

  postflight do
    system_command '/bin/mv',
                   args: [
                           '-f', '--',
                           "#{staged_path}/sapmachine-jdk-#{version}.jdk",
                           "/Library/Java/JavaVirtualMachines/sapmachine-jdk-#{version}.jdk"
                         ],
                   sudo: true

    system_command '/bin/mkdir',
                   args: ['-p', '--', "/Library/Java/JavaVirtualMachines/sapmachine-jdk-#{version}.jdk/Contents/Home/bundle/Libraries"],
                   sudo: true

    system_command '/bin/ln',
                   args: [
                           '-nsf', '--',
                           "/Library/Java/JavaVirtualMachines/sapmachine-jdk-#{version}.jdk/Contents/Home/lib/server/libjvm.dylib",
                           "/Library/Java/JavaVirtualMachines/sapmachine-jdk-#{version}.jdk/Contents/Home/bundle/Libraries/libserver.dylib"
                         ],
                   sudo: true
  end

  uninstall delete: "/Library/Java/JavaVirtualMachines/sapmachine-jdk-#{version}.jdk"
end
