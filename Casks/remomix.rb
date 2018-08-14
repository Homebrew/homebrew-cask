cask 'remomix' do
  version '0.2.1'
  sha256 '45a2798544faeea741d43833f4352178ad0c4fe56213a4a23f31818b39ad5c0d'

  # github.com/johndbritton/remomix-releases was verified as official when first introduced to the cask
  url "https://github.com/johndbritton/remomix-releases/releases/download/v#{version}/Remomix-#{version}-osx.zip"
  appcast 'https://github.com/johndbritton/remomix-releases/releases.atom'
  name 'Remomix'
  homepage 'http://remomix.com/'

  app 'Remomix.app'
end
