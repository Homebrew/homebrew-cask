cask 'oracle-jdk-javadoc' do
  version '12.0.1,12:69cfe15208a647278a19ef0990eea691'
  sha256 'd77c9d9b38da262dbef88424d6d7e138a27efa26522313ec762126fde560d63f'

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
