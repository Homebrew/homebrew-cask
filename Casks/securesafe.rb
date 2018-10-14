cask 'securesafe' do
  version '2.4.4'
  sha256 '9d326dc606b334f4380eb755399d82c836cd8754a4f41239e946b2be909dda05'

  url "https://www.securesafe.com/downloads/SecureSafe_#{version}.pkg"
  name 'SecureSafe'
  homepage 'https://www.securesafe.com/'

  pkg "SecureSafe_#{version}.pkg"

  uninstall pkgutil: [
                       'com.dswiss.securesafe.pkg.sync',
                       'com.github.osxfuse.pkg.Core',
                     ]
end
