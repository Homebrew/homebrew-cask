cask 'securesafe' do
  version '2.5.0'
  sha256 'c641d2934a372dd89a0103bbc993f8a18f47fbe4dd080c088cc52911cbc8ecfc'

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
