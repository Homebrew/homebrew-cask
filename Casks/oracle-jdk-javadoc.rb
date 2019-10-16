cask 'oracle-jdk-javadoc' do
  version '13.0.1,9:cec27d702aa74d5a8630c65ae61e4305'
  sha256 '9603c0b8fe0bbf68115e6ccf70d386bc1036295a66783362a76bcc2c78e0c3d7'

  url "https://download.oracle.com/otn-pub/java/jdk/#{version.before_comma}+#{version.after_comma.before_colon}/#{version.after_colon}/jdk-#{version.before_comma}_doc-all.zip",
      cookies: {
                 'oraclelicense' => 'accept-securebackup-cookie',
               }
  name 'Oracle Java Standard Edition Development Kit Documentation'
  homepage 'https://www.oracle.com/technetwork/java/javase/documentation/index.html'

  artifact 'docs', target: "/Library/Java/JavaVirtualMachines/jdk-#{version.before_comma}.jdk/Contents/Home/docs"

  uninstall rmdir: [
                     "/Library/Java/JavaVirtualMachines/jdk-#{version.before_comma}.jdk/Contents/Home",
                     "/Library/Java/JavaVirtualMachines/jdk-#{version.before_comma}.jdk/Contents",
                     "/Library/Java/JavaVirtualMachines/jdk-#{version.before_comma}.jdk",
                     '/Library/Java/JavaVirtualMachines',
                   ]

  caveats do
    license 'https://www.oracle.com/technetwork/java/javase/terms/license/index.html'
  end
end
