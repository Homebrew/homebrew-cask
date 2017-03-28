cask 'eclipse-jee' do
  version '4.6.3,neon:3'
  sha256 '54c70945b369be455abb0b49c748358e7ab5831978a0dc6909b5b9e7a18728e2'

  url "https://www.eclipse.org/downloads/download.php?file=/technology/epp/downloads/release/#{version.after_comma.before_colon}/#{version.after_colon}/eclipse-jee-#{version.after_comma.before_colon}-#{version.after_colon}-macosx-cocoa-x86_64.tar.gz&r=1"
  name 'Eclipse IDE for Java EE Developers'
  homepage 'https://eclipse.org/'

  depends_on macos: '>= :leopard'

  app 'Eclipse.app'

  caveats do
    depends_on_java
  end
end
