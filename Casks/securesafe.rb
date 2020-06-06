cask 'securesafe' do
  version '2.7.0'
  sha256 '85da709463cea53b41b2609eb650ce85be90178c123bd815c1c3f1f5da558529'

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
