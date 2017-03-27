cask 'eclipse-cpp' do
  version '4.6.3,neon:3'
  sha256 '60d1aead8f620c0805c678840bf5b9ea08a28c9be96b9012477be741d0b23c13'

  url "https://www.eclipse.org/downloads/download.php?file=/technology/epp/downloads/release/#{version.after_comma.before_colon}/#{version.after_colon}/eclipse-cpp-#{version.after_comma.before_colon}-#{version.after_colon}-macosx-cocoa-x86_64.tar.gz&r=1"
  name 'Eclipse IDE for C/C++ Developers'
  homepage 'https://eclipse.org/'

  depends_on macos: '>= :leopard'

  app 'Eclipse.app'
end
