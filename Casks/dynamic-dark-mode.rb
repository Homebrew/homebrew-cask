cask 'dynamic-dark-mode' do
  version '1.3.0'
  sha256 'abbbbd294610d30d2991eba89249af561a33e677e455eb733a1a0df85a76e7a5'

  url "https://github.com/ApolloZhu/Dynamic-Dark-Mode/releases/download/#{version}/Dynamic_Dark_Mode-#{version}.zip"
  appcast 'https://github.com/ApolloZhu/Dynamic-Dark-Mode/releases.atom'
  name 'Dynamic Dark Mode'
  homepage 'https://github.com/ApolloZhu/Dynamic-Dark-Mode'

  depends_on macos: '>= :mojave'

  app 'Dynamic Dark Mode.app'
end
