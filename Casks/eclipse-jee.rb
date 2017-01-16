cask 'eclipse-jee' do
  version '4.6.2,neon:2'
  sha256 '7a65903dd5ad2e3d32fedd76d3fd59beadd92a8144181eb198b786063f17c9b6'

  url "https://www.eclipse.org/downloads/download.php?file=/technology/epp/downloads/release/#{version.after_comma.before_colon}/#{version.after_colon}/eclipse-jee-#{version.after_comma.before_colon}-#{version.after_colon}-macosx-cocoa-x86_64.tar.gz&r=1"
  name 'Eclipse IDE for Java EE Developers'
  homepage 'https://eclipse.org/'

  depends_on macos: '>= :leopard'

  app 'Eclipse.app'

  caveats do
    depends_on_java
  end
end
