cask 'eclipse-jee' do
  version '4.7.3,oxygen:3'
  sha256 'f0ed1d9d62e4dd06354b1b7589b6d61a09f4964294207871e43adcbd7dc17771'

  url "https://www.eclipse.org/downloads/download.php?file=/technology/epp/downloads/release/#{version.after_comma.before_colon}/#{version.after_colon}/eclipse-jee-#{version.after_comma.before_colon}-#{version.after_colon}-macosx-cocoa-x86_64.dmg&r=1"
  name 'Eclipse IDE for Java EE Developers'
  homepage 'https://eclipse.org/'

  depends_on macos: '>= :leopard'

  # Renamed to avoid conflict with other Eclipse.
  app 'Eclipse.app', target: 'Eclipse JEE.app'

  caveats do
    depends_on_java
  end
end
