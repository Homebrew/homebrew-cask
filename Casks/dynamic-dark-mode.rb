cask 'dynamic-dark-mode' do
  version '1.5.1'
  sha256 '682da4fad8b3ed527b8efe281e1f7ab4f2c99307feabcfd7e125940a70a0f80a'

  url "https://github.com/ApolloZhu/Dynamic-Dark-Mode/releases/download/#{version}/Dynamic_Dark_Mode-#{version}.zip"
  appcast 'https://github.com/ApolloZhu/Dynamic-Dark-Mode/releases.atom'
  name 'Dynamic Dark Mode'
  homepage 'https://github.com/ApolloZhu/Dynamic-Dark-Mode'

  auto_updates true
  depends_on macos: '>= :mojave'

  app 'Dynamic Dark Mode.app'
end
