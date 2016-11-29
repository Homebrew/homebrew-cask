cask 'eclipse-jee' do
  version '4.6.1,neon:1a'
  sha256 'c64da846dfb762ce6650e4d842c566a61836b14c0a77b1f5395f4f9842a66aad'

  url "https://www.eclipse.org/downloads/download.php?file=/technology/epp/downloads/release/#{version.after_comma.before_colon}/#{version.after_colon}/eclipse-jee-#{version.after_comma.before_colon}-#{version.after_colon}-macosx-cocoa-x86_64.tar.gz&r=1"
  name 'Eclipse IDE for Java EE Developers'
  homepage 'https://eclipse.org/'

  depends_on macos: '>= :leopard'
  depends_on arch: :x86_64

  app 'Eclipse.app'

  caveats do
    depends_on_java
  end
end
