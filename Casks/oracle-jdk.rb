cask 'oracle-jdk' do
  version '13,33:5b8a42f3905b406298b72d750b6919f6'
  sha256 '2dd149168b3b20d8c12f3d8f26f1cda97aa16f0a13e1eaba912aa478dfcfc539'

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
