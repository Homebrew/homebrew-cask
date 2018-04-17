cask 'forrest' do
  version '1.0.0-zeta'
  sha256 'cdff5441ca9d3db3dbcc6be29732ac2f05896135059f70a7dd49be5eede86991'

  url "https://github.com/stefanjudis/forrest/releases/download/v#{version}/Forrest-#{version}-mac.zip"
  appcast 'https://github.com/stefanjudis/forrest/releases.atom',
          checkpoint: 'd30d71d5161285042781090adc70289b20f75350fec6256564b93ac1e49d1aa8'
  name 'Forrest'
  homepage 'https://github.com/stefanjudis/forrest'

  app 'Forrest.app'
end
