cask 'java-jdk-javadoc' do
  version '10.0.2,13:19aef61b38124481863b1413dce1855f'
  sha256 'cb7b1703e9e1ef8adc2506672e5d6396df2d76a4f9f4dda8e4226b4ae52852a8'

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

  caveats do
    license 'https://www.oracle.com/technetwork/java/javase/terms/license/index.html'
  end
end
