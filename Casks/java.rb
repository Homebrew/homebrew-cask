cask 'java' do
  version '11,28'
  sha256 '6b969d2df6a9758d9458f5ba47939250e848dfba8b49e41c935cf210606b6d38'

  url "https://download.java.net/java/GA/jdk#{version.before_comma}/#{version.after_comma}/GPL/openjdk-#{version.before_comma}+#{version.after_comma}_osx-x64_bin.tar.gz"
  name 'OpenJDK'
  homepage 'https://jdk.java.net/'

  postflight do
    system_command '/bin/mv',
                   args: ['-f', '--', "#{staged_path}/jdk-#{version.before_comma}.jdk",
                          "/Library/Java/JavaVirtualMachines/openjdk-#{version.before_comma}.jdk"],
                   sudo: true

    system_command '/bin/mkdir',
                   args: ['-p', '--', "/Library/Java/JavaVirtualMachines/openjdk-#{version.before_comma}.jdk/Contents/Home/bundle/Libraries"],
                   sudo: true

    system_command '/bin/ln',
                   args: ['-nsf', '--', "/Library/Java/JavaVirtualMachines/openjdk-#{version.before_comma}.jdk/Contents/Home/lib/server/libjvm.dylib",
                          "/Library/Java/JavaVirtualMachines/openjdk-#{version.before_comma}.jdk/Contents/Home/bundle/Libraries/libserver.dylib"],
                   sudo: true
  end

  uninstall_postflight do
    system_command '/bin/rm',
                   args: ['-rf', '--', "/Library/Java/JavaVirtualMachines/openjdk-#{version.before_comma}.jdk"],
                   sudo: true
  end
end
