cask 'eclipse-ide' do
  version '4.6.1,neon:1a'
  sha256 '67eb608808e54011570d6b3c5f6ca0e360e397e80d92accc8f9e361ca7522125'

  url "https://www.eclipse.org/downloads/download.php?file=/technology/epp/downloads/release/#{version.after_comma.before_colon}/#{version.after_colon}/eclipse-committers-#{version.after_comma.before_colon}-#{version.after_colon}-macosx-cocoa-x86_64.tar.gz&r=1"
  name 'Eclipse IDE for Eclipse Committers'
  homepage 'https://eclipse.org/'

  depends_on macos: '>= :leopard'
  depends_on arch: :x86_64

  app 'Eclipse.app'
end
