cask 'dynamic-dark-mode' do
  version '1.2.0'
  sha256 '7975a441a2e5105beca59197ebbd3b4dc828f784c49114bd0cfde105c98f4324'

  url "https://github.com/ApolloZhu/Dynamic-Dark-Mode/releases/download/#{version}/Dynamic_Dark_Mode-#{version}.zip"
  appcast 'https://github.com/ApolloZhu/Dynamic-Dark-Mode/releases.atom'
  name 'Dynamic Dark Mode'
  homepage 'https://github.com/ApolloZhu/Dynamic-Dark-Mode'

  depends_on macos: '>= :mojave'

  app 'Dynamic Dark Mode.app'
end
