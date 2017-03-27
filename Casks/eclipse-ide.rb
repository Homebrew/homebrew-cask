cask 'eclipse-ide' do
  version '4.6.3,neon:3'
  sha256 '0b194382d7a8058876e5c73cf1c110f2159cfc4a36332f8a4c84512f37e1bd32'

  url "https://www.eclipse.org/downloads/download.php?file=/technology/epp/downloads/release/#{version.after_comma.before_colon}/#{version.after_colon}/eclipse-committers-#{version.after_comma.before_colon}-#{version.after_colon}-macosx-cocoa-x86_64.tar.gz&r=1"
  name 'Eclipse IDE for Eclipse Committers'
  homepage 'https://eclipse.org/'

  depends_on macos: '>= :leopard'

  app 'Eclipse.app'
end
