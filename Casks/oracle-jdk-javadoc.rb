cask 'oracle-jdk-javadoc' do
  version '14.0.1,7:664493ef4a6946b186ff29eb326336a2'
  sha256 'ec3e41df14e63ee111a716126191464bc8791f98e50c3188e258aab3010fdc9d'

  url "https://download.oracle.com/otn-pub/java/jdk/#{version.before_comma}+#{version.after_comma.before_colon}/#{version.after_colon}/jdk-#{version.before_comma}_doc-all.zip",
      cookies: {
                 'oraclelicense' => 'accept-securebackup-cookie',
               }
  name 'Oracle Java Standard Edition Development Kit Documentation'
  homepage 'https://www.oracle.com/technetwork/java/javase/documentation/index.html'

  artifact 'docs', target: "/Library/Java/JavaVirtualMachines/jdk-#{version.before_comma}.jdk/Contents/Home/docs"

  uninstall rmdir: "/Library/Java/JavaVirtualMachines/jdk-#{version.before_comma}.jdk"

  caveats do
    license 'https://www.oracle.com/technetwork/java/javase/terms/license/index.html'
  end
end
