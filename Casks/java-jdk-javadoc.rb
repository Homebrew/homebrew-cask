cask 'java-jdk-javadoc' do
  version '10,46:76eac37278c24557a3c4199677f19b62'
  sha256 '3bd4c890f6bfaef61141f0720457d6c82a8c479b22a591631cc2b3d741a205bb'

  url "http://download.oracle.com/otn-pub/java/jdk/#{version.before_comma}+#{version.after_comma.before_colon}/#{version.after_colon}/jdk-#{version.before_comma}_doc-all.zip",
      cookies: {
                 'oraclelicense' => 'accept-securebackup-cookie',
               }
  name 'Java Standard Edition Development Kit Documentation'
  homepage "http://www.oracle.com/technetwork/java/javase/documentation/jdk#{version.major}-doc-downloads-4417029.html"

  postflight do
    `/usr/libexec/java_home -v #{version.before_comma} -X | grep -B0 -A1 JVMHomePath | sed -n -e 's/[[:space:]]*<string>\\(.*\\)<\\/string>/\\1/p'`.split("\n").each do |path|
      system_command '/bin/cp',
                     args: ['-rp', "#{staged_path}/docs", "#{path}/"],
                     sudo: true
    end
  end

  uninstall_postflight do
    `/usr/libexec/java_home -v #{version.before_comma} -X | grep -B0 -A1 JVMHomePath | sed -n -e 's/[[:space:]]*<string>\\(.*\\)<\\/string>/\\1/p'`.split("\n").each do |path|
      next unless File.exist?("#{path}/docs")
      system_command '/bin/rm',
                     args: ['-rf', "#{path}/docs"],
                     sudo: true
    end
  end

  caveats <<~EOS
    Installing this Cask means you have AGREED to the Oracle Binary Code
    License Agreement for Java SE at

      https://www.oracle.com/technetwork/java/javase/terms/license/index.html
  EOS
end
