cask 'jce-unlimited-strength-policy' do
  version '1.8'
  sha256 'f3020a3922efd6626c2fff45695d527f34a8020e938a49292561f18ad1320b59'

  url "http://download.oracle.com/otn-pub/java/jce/#{version.minor}/jce_policy-#{version.minor}.zip",
      cookies: { 'oraclelicense' => 'accept-securebackup-cookie' }
  name 'Java Cryptography Extension (JCE) Unlimited Strength Jurisdiction Policy Files'
  homepage "https://www.oracle.com/technetwork/java/javase/downloads/jce#{version.minor}-download-2133166.html"

  postflight do
    `/usr/libexec/java_home -v #{version} -X | grep -B0 -A1 JVMHomePath | sed -n -e 's/[[:space:]]*<string>\\(.*\\)<\\/string>/\\1/p'`.split("\n").each do |path|
      system_command '/bin/cp',
                     args: ['-an', "#{path}/jre/lib/security/US_export_policy.jar", "#{path}/jre/lib/security/US_export_policy.jar.bak"],
                     sudo: true

      system_command '/bin/cp',
                     args: ['-an', "#{path}/jre/lib/security/local_policy.jar", "#{path}/jre/lib/security/local_policy.jar.bak"],
                     sudo: true

      system_command '/bin/ln',
                     args: ['-nsf', "#{staged_path}/UnlimitedJCEPolicyJDK#{version.minor}/US_export_policy.jar", "#{path}/jre/lib/security/US_export_policy.jar"],
                     sudo: true

      system_command '/bin/ln',
                     args: ['-nsf', "#{staged_path}/UnlimitedJCEPolicyJDK#{version.minor}/local_policy.jar", "#{path}/jre/lib/security/local_policy.jar"],
                     sudo: true
    end
  end

  uninstall_postflight do
    `/usr/libexec/java_home -v #{version} -X | grep -B0 -A1 JVMHomePath | sed -n -e 's/[[:space:]]*<string>\\(.*\\)<\\/string>/\\1/p'`.split("\n").each do |path|
      system_command '/bin/mv',
                     args: ['-f', "#{path}/jre/lib/security/US_export_policy.jar.bak", "#{path}/jre/lib/security/US_export_policy.jar"],
                     sudo: true
      system_command '/bin/mv',
                     args: ['-f', "#{path}/jre/lib/security/local_policy.jar.bak", "#{path}/jre/lib/security/local_policy.jar"],
                     sudo: true
    end
  end

  caveats <<-EOS.undent
    Installing this Cask means you have AGREED to the Oracle Binary Code License Agreement for Java SE at
      https://www.oracle.com/technetwork/java/javase/terms/license/index.html
  EOS
end
