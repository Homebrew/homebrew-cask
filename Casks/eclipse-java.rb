cask 'eclipse-java' do
  version '4.6.2,neon:2'
  sha256 '6fb58cdfe12c9ea0d36839405ac64b99997ae1a2280cfe6ea0ca6fcc756430dd'

  url "https://www.eclipse.org/downloads/download.php?file=/technology/epp/downloads/release/#{version.after_comma.before_colon}/#{version.after_colon}/eclipse-java-#{version.after_comma.before_colon}-#{version.after_colon}-macosx-cocoa-x86_64.tar.gz&r=1"
  name 'Eclipse IDE for Java Developers'
  homepage 'https://eclipse.org/'

  depends_on macos: '>= :leopard'

  app 'Eclipse.app'
end
