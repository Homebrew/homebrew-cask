cask 'james' do
  version '1.5.0'
  sha256 '6c0dae2282913d11527d302e13f7a0b08d6a892fcdc0e665a222f811e127e61d'

  url 'https://github.com/james-proxy/james/releases/download/v#{version}/james-#{version}.dmg'
  name 'James'
  homepage 'https://github.com/james-proxy/james'

  app 'James.app'
end
