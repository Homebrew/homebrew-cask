cask 'securesafe' do
  version '2.6.0'
  sha256 '3016ad51e569c9b1f06884bcb4803a1520f9435fed5c84e2626e0f40a99c33cb'

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
