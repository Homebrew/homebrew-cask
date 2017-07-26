cask 'java-jdk-javadoc' do
  version '1.8.0_144-b01,090f390dda5b47b9b721c7dfaa008135'
  sha256 'ae2b2fdb162ca5716fe60d8fddbe7b0d2059d2b571311d27d488a20a40c6b3be'

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
