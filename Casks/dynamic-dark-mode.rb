cask 'dynamic-dark-mode' do
  version '1.1.4'
  sha256 '3101ef4222843c41a48122abef1f5e97501a67d8664c20a61a9397abeee1bdca'

  url "https://github.com/ApolloZhu/Dynamic-Dark-Mode/releases/download/#{version}/Dynamic_Dark_Mode-#{version}.pkg"
  appcast 'https://github.com/ApolloZhu/Dynamic-Dark-Mode/releases.atom'
  name 'Dynamic Dark Mode'
  homepage 'https://github.com/ApolloZhu/Dynamic-Dark-Mode'

  depends_on macos: '>= :mojave'

  pkg "Dynamic_Dark_Mode-#{version}.pkg"

  uninstall pkgutil: 'io.github.apollozhu.Dynamic.pkg'
end
