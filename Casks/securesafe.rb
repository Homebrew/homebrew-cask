cask 'securesafe' do
  version '2.4.5'
  sha256 'd6f617ba60b05814453ccd22636e0b24962d34f7bbf14d75bd3dd344271d7efe'

  url "https://www.securesafe.com/downloads/SecureSafe_#{version}.pkg"
  name 'SecureSafe'
  homepage 'https://www.securesafe.com/'

  depends_on macos: '>= :sierra'

  pkg "SecureSafe_#{version}.pkg"

  uninstall pkgutil: [
                       'com.dswiss.securesafe.pkg.sync',
                       'com.github.osxfuse.pkg.Core',
                     ]
end
