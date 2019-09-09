cask 'dynamic-dark-mode' do
  version '1.4.0'
  sha256 '55debb60b0dde1b7156ebb87d462ac3940e16dd26d7c954e7cd3dafdab94769d'

  url "https://github.com/ApolloZhu/Dynamic-Dark-Mode/releases/download/#{version}/Dynamic_Dark_Mode-#{version}.zip"
  appcast 'https://github.com/ApolloZhu/Dynamic-Dark-Mode/releases.atom'
  name 'Dynamic Dark Mode'
  homepage 'https://github.com/ApolloZhu/Dynamic-Dark-Mode'

  depends_on macos: '>= :mojave'

  app 'Dynamic Dark Mode.app'
end
