cask 'java' do
  version '11.0.1,13'
  sha256 'fa07eee08fa0f3de541ee1770de0cdca2ae3876f3bd78c329f27e85c287cd070'

  url "https://download.java.net/java/GA/jdk#{version.major}/#{version.after_comma}/GPL/openjdk-#{version.before_comma}_osx-x64_bin.tar.gz"
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

  uninstall delete: "/Library/Java/JavaVirtualMachines/openjdk-#{version.before_comma}.jdk"
end
