cask 'securesafe' do
  version '2.4.7'
  sha256 '7d72c69dd6c3708996de379a74a599f82509c2733d6189d5ba6e72e01ada2cc5'

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
