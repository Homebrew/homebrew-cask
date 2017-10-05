cask 'java-jdk-javadoc' do
  version '9,181'
  sha256 '54d65f4b8f4192a51a5d90816a2e118da45377be21091351d05389b5a2cfa127'

  url "http://download.oracle.com/otn-pub/java/jdk/#{version.major}+#{version.after_comma}/jdk-#{version.major}_doc-all.zip",
      cookies: {
                 'oraclelicense' => 'accept-securebackup-cookie',
               }
  name 'Java Standard Edition Development Kit Documentation'
  homepage "http://www.oracle.com/technetwork/java/javase/documentation/jdk#{version.major}-doc-downloads-3850606.html"

  postflight do
    `/usr/libexec/java_home -v #{version.major} -X | grep -B0 -A1 JVMHomePath | sed -n -e 's/[[:space:]]*<string>\\(.*\\)<\\/string>/\\1/p'`.split("\n").each do |path|
      system_command '/bin/cp',
                     args: ['-rp', "#{staged_path}/docs", "#{path}/"],
                     sudo: true
    end
  end

  uninstall_postflight do
    `/usr/libexec/java_home -v #{version.major} -X | grep -B0 -A1 JVMHomePath | sed -n -e 's/[[:space:]]*<string>\\(.*\\)<\\/string>/\\1/p'`.split("\n").each do |path|
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
