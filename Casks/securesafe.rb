cask 'securesafe' do
  version '2.4.6'
  sha256 'e062354d7f896aa4f16a4a6f843ef802da58956d1a397d3f99569cb35e4c6d6a'

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
