cask 'securesafe' do
  version '2.7.1'
  sha256 'dc501d465214a986c777019b16cef2ee77bd7062a3c23a7839ab6aa62d4b2366'

  url "https://www.securesafe.com/downloads/SecureSafe_#{version}.pkg"
  appcast 'https://www.securesafe.com/en/downloads/'
  name 'SecureSafe'
  homepage 'https://www.securesafe.com/'

  depends_on macos: '>= :sierra'

  pkg "SecureSafe_#{version}.pkg"

  uninstall pkgutil: [
                       'com.dswiss.securesafe.pkg.sync',
                       'com.github.osxfuse.pkg.Core',
                     ]
end
