cask 'dynamic' do
  version '1.0.6'
  sha256 '2e82507ad65cf4eda208a8f41b4fe54944d0c04d15d1a49d1bcf546c65b7454d'

  url "https://github.com/ApolloZhu/Dynamic-Dark-Mode/releases/download/#{version}/Dynamic-#{version}.zip"
  appcast 'https://github.com/ApolloZhu/Dynamic-Dark-Mode/releases.atom'
  name 'Dynamic Dark Mode'
  homepage 'https://github.com/ApolloZhu/Dynamic-Dark-Mode'

  depends_on macos: '>= :mojave'

  app 'Dynamic.app'
end
