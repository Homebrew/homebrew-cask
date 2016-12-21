cask 'eclipse-cpp' do
  version '4.6.1,neon:1a'
  sha256 '1f4bcc0e1766b8441a11fc11e5bf8204a715d91dc818bfc481df8dc317a5c18b'

  url "https://www.eclipse.org/downloads/download.php?file=/technology/epp/downloads/release/#{version.after_comma.before_colon}/#{version.after_colon}/eclipse-cpp-#{version.after_comma.before_colon}-#{version.after_colon}-macosx-cocoa-x86_64.tar.gz&r=1"
  name 'Eclipse IDE for C/C++ Developers'
  homepage 'https://eclipse.org/'

  depends_on macos: '>= :leopard'

  app 'Eclipse.app'
end
