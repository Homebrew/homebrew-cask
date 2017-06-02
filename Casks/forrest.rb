cask 'forrest' do
  version '1.0.0'
  sha256 'cdff5441ca9d3db3dbcc6be29732ac2f05896135059f70a7dd49be5eede86991'

  url "https://github.com/stefanjudis/forrest/releases/download/v#{version}-zeta/Forrest-#{version}-zeta-mac.zip"
  name 'Forrest'
  homepage 'https://github.com/stefanjudis/forrest'

  app 'Forrest.app'
end
