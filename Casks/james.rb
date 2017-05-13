cask 'james' do
  version '1.5.0'
  sha256 '6c0dae2282913d11527d302e13f7a0b08d6a892fcdc0e665a222f811e127e61d'

  url "https://github.com/james-proxy/james/releases/download/v#{version}/james-#{version}.dmg"
  appcast 'https://github.com/james-proxy/james/releases.atom',
          checkpoint: '59daa019d6198f4d7fa68e1c8fec2dd8075f293a9103ce0d75611d618fdf5f9a'
  name 'James'
  homepage 'https://github.com/james-proxy/james'

  app 'James.app'
end
