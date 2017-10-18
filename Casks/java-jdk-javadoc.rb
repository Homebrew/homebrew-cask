cask 'java-jdk-javadoc' do
  version '9.0.1,11'
  sha256 '79c375220326cfcd38c6ae15bce6e99ae866c7e477fb48fdf9221fe5742b786c'

  url "http://download.oracle.com/otn-pub/java/jdk/#{version.before_comma}+#{version.after_comma}/jdk-#{version.before_comma}_doc-all.zip",
      cookies: {
                 'oraclelicense' => 'accept-securebackup-cookie',
               }
  name 'Java Standard Edition Development Kit Documentation'
  homepage "http://www.oracle.com/technetwork/java/javase/documentation/jdk#{version.major}-doc-downloads-3850606.html"

  postflight do
    `/usr/libexec/java_home -v #{version.before_comma} -X | grep -B0 -A1 JVMHomePath | sed -n -e 's/[[:space:]]*<string>\\(.*\\)<\\/string>/\\1/p'`.split("\n").each do |path|
      system_command '/bin/cp',
                     args: ['-rp', "#{staged_path}/docs", "#{path}/"],
                     sudo: true
    end
  end

  uninstall_postflight do
    `/usr/libexec/java_home -v #{version.before_comma} -X | grep -B0 -A1 JVMHomePath | sed -n -e 's/[[:space:]]*<string>\\(.*\\)<\\/string>/\\1/p'`.split("\n").each do |path|
      system_command '/bin/rm',
                     args: ['-rf', "#{path}/docs"],
                     sudo: true
    end
  end

  caveats <<-EOS.undent
    Installing this Cask means you have AGREED to the Oracle Binary Code
    License Agreement for Java SE at

      https://www.oracle.com/technetwork/java/javase/terms/license/index.html

     #{token} will be uninstalled when the Java Cask is uninstalled or reinstalled
  EOS
end
