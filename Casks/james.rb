cask 'james' do
  version '2.1.2'
  sha256 '6f958fcd988eccbfa9aacb393b7b5f484a3c824f2f137f948dfc5a82d8a9c962'

  url "https://github.com/james-proxy/james/releases/download/v#{version}/james-#{version}.dmg"
  appcast 'https://github.com/james-proxy/james/releases.atom'
  name 'James'
  homepage 'https://github.com/james-proxy/james'

  app 'James.app'
end
