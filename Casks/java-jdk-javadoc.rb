cask 'java-jdk-javadoc' do
  version '1.8.0_121-b13,e9e7ea248e2c4826b92b3f075a80e441'
  sha256 '863eb1dbc3aa6714392f2ea3d72e8f5c603a0a6a31ede70069e1579c376edc9b'

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
