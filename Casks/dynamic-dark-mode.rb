cask 'dynamic-dark-mode' do
  version '1.4.2'
  sha256 '76fb98e23627ecefc5d426320ff1a433fb06cf4d1e18fa7016e78766a2bd4321'

  url "https://github.com/ApolloZhu/Dynamic-Dark-Mode/releases/download/#{version}/Dynamic_Dark_Mode-#{version}.zip"
  appcast 'https://github.com/ApolloZhu/Dynamic-Dark-Mode/releases.atom'
  name 'Dynamic Dark Mode'
  homepage 'https://github.com/ApolloZhu/Dynamic-Dark-Mode'

  auto_updates true
  depends_on macos: '>= :mojave'

  app 'Dynamic Dark Mode.app'
end
