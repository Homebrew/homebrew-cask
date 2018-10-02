cask 'dynamic-dark-mode' do
  version '1.0.5'
  sha256 '458f28938d25f7dc857b27ee2d6066a55703a7c3ed635b015101f7bc1e1dee81'

  # github.com/ApolloZhu/Dynamic-Dark-Mode was verified as official when first introduced to the cask
  url "https://github.com/ApolloZhu/Dynamic-Dark-Mode/releases/download/#{version}/Dynamic-#{version}.zip"
  appcast 'https://github.com/ApolloZhu/Dynamic-Dark-Mode/releases.atom'
  name 'Dynamic-Dark-Mode'
  homepage 'https://apollozhu.github.io/Dynamic-Dark-Mode/'

  depends_on macos: '>= mojave'

  app "Dynamic.app"
end
