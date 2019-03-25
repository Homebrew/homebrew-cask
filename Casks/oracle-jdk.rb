cask 'oracle-jdk' do
  version '12,33:312335d836a34c7c8bba9d963e26dc23'
  sha256 '543fb5dd3d6db5240b975e2cf3c6cae93bfc54370d4c615b5ca3e4197d7838c0'

  url "https://download.oracle.com/otn-pub/java/jdk/#{version.before_comma}+#{version.after_comma.before_colon}/#{version.after_colon}/jdk-#{version.before_comma}_osx-x64_bin.dmg",
      cookies: {
                 'oraclelicense' => 'accept-securebackup-cookie',
               }
  name 'Oracle Java Standard Edition Development Kit'
  homepage 'https://www.oracle.com/technetwork/java/javase/overview/index.html'

  depends_on macos: '>= :yosemite'

  pkg "JDK #{version.before_comma}.pkg"

  uninstall pkgutil: "com.oracle.jdk-#{version.before_comma}",
            rmdir:   '/Library/Java/JavaVirtualMachines'

  caveats do
    license 'https://www.oracle.com/technetwork/java/javase/terms/license/javase-license.html'
  end
end
