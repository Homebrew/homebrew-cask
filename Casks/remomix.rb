cask 'remomix' do
  version '0.2.1'
  sha256 '45a2798544faeea741d43833f4352178ad0c4fe56213a4a23f31818b39ad5c0d'

  # github.com/johndbritton/remomix-releases was verified as official when first introduced to the cask
  url "https://github.com/johndbritton/remomix-releases/releases/download/v#{version}/Remomix-#{version}-osx.zip"
  appcast 'https://github.com/johndbritton/remomix-releases/releases.atom',
          checkpoint: '73b44d814f16176f6496889ba4e9cf9166dad2cc8360c77a67f93305977bf68f'
  name 'Remomix'
  homepage 'http://remomix.com'

  app 'Remomix.app'
end
