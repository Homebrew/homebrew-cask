cask 'java-jdk-javadoc' do
  version '1.8.0_141-b15,336fa29ff2bb4ef291e347e091f7f4a7'
  sha256 '77e3d2c07bdf29838580eac7cf6d5191d64c6892104df265e7c4da6ab471cbcf'

  java_update = version.sub(%r{.*_(\d+)-.*}, '\1')
  url "http://download.oracle.com/otn-pub/java/jdk/#{version.minor}u#{version.before_comma.split('_').last}/#{version.after_comma}/jdk-#{version.minor}u#{java_update}-docs-all.zip",
      cookies: {
                 'oraclelicense' => 'accept-securebackup-cookie',
               }
  name 'Java Standard Edition Development Kit Documentation'
  homepage 'http://www.oracle.com/technetwork/java/javase/documentation/jdk8-doc-downloads-2133158.html'

  postflight do
    `/usr/libexec/java_home -v #{version.before_comma.split('-').first} -X | grep -B0 -A1 JVMHomePath | sed -n -e 's/[[:space:]]*<string>\\(.*\\)<\\/string>/\\1/p'`.split("\n").each do |path|
      system_command '/bin/cp',
                     args: ['-rp', "#{staged_path}/docs", "#{path}/"],
                     sudo: true
    end
  end

  uninstall_postflight do
    `/usr/libexec/java_home -v #{version.before_comma.split('-').first} -X | grep -B0 -A1 JVMHomePath | sed -n -e 's/[[:space:]]*<string>\\(.*\\)<\\/string>/\\1/p'`.split("\n").each do |path|
      system_command '/bin/rm',
                     args: ['-rf', "#{path}/docs"],
                     sudo: true
    end
  end

  caveats <<-EOS.undent
    Installing this Cask means you have AGREED to the Oracle Binary Code
    License Agreement for Java SE at

      https://www.oracle.com/technetwork/java/javase/terms/license/index.html
  EOS
end
