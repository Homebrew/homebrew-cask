cask 'oracle-jdk-javadoc' do
  version '13,33:5b8a42f3905b406298b72d750b6919f6'
  sha256 '8e9848af68ee227438661cfb73740de94e11755234432ceae04f86a04b1c7e15'

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
