cask 'dynamic-dark-mode' do
  version '1.1.3'
  sha256 'a2363c8038a8babf30186c06674749a09de998dcb644030ecb68894847469b4e'

  url "https://github.com/ApolloZhu/Dynamic-Dark-Mode/releases/download/#{version}/Dynamic_Dark_Mode-#{version}.zip"
  appcast 'https://github.com/ApolloZhu/Dynamic-Dark-Mode/releases.atom'
  name 'Dynamic Dark Mode'
  homepage 'https://github.com/ApolloZhu/Dynamic-Dark-Mode'

  depends_on macos: '>= :mojave'

  app 'Dynamic Dark Mode.app'
end
