cask 'oracle-jdk-javadoc' do
  version '11.0.2,9:f51449fcd52f4d52b93a989c5c56ed3c'
  sha256 '8723e26bf097b4b9375851338270870d3b5ef1a3843f0631597adb9039308083'

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
