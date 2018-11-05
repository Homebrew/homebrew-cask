cask 'dynamic-dark-mode' do
  version '1.1.0'
  sha256 'd1395739c0ce2423952012df02454f315be32e14b8b116df6beb9712cd3ff45e'

  url "https://github.com/ApolloZhu/Dynamic-Dark-Mode/releases/download/#{version}/Dynamic_Dark_Mode-#{version}.zip"
  appcast 'https://github.com/ApolloZhu/Dynamic-Dark-Mode/releases.atom'
  name 'Dynamic Dark Mode'
  homepage 'https://github.com/ApolloZhu/Dynamic-Dark-Mode'

  depends_on macos: '>= :mojave'

  app 'Dynamic Dark Mode.app'
end
