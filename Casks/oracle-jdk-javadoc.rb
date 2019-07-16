cask 'oracle-jdk-javadoc' do
  version '12.0.2,10:e482c34c86bd4bf8b56c0b35558996b9'
  sha256 '8541ec6ff1d78f7e36ea6b5cfcf8cf84b8431ebe67d0f68a1f29fd00debd12aa'

  url "https://download.oracle.com/otn-pub/java/jdk/#{version.before_comma}+#{version.after_comma.before_colon}/#{version.after_colon}/jdk-#{version.before_comma}_doc-all.zip",
      cookies: {
                 'oraclelicense' => 'accept-securebackup-cookie',
               }
  name 'Oracle Java Standard Edition Development Kit Documentation'
  homepage "https://www.oracle.com/technetwork/java/javase/documentation/jdk#{version.major}-doc-downloads-4417029.html"

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
