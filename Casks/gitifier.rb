cask 'gitifier' do
  version '1.3.1'
  sha256 '59068f250654d0d1588c544f34148bd81a8855b78f868fca8ae49dd3d24d1ee4'

  # github.com/nschum/Gitifier was verified as official when first introduced to the cask
  url "https://github.com/nschum/Gitifier/releases/download/#{version}/Gitifier-#{version}.zip"
  appcast 'https://github.com/nschum/Gitifier/releases.atom'
  name 'Gitifier'
  homepage 'https://psionides.github.io/Gitifier/'

  app 'Gitifier.app'

  zap trash: [
               '~/Library/Caches/net.psionides.Gitifier',
               '~/Library/Preferences/net.psionides.Gitifier.plist',
             ]
end
