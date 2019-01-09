cask 'james' do
  version '2.1.1'
  sha256 'b53dcad18a619d77005c3c4772504d968376263af160578d24cfd8ad1be4be4c'

  url "https://github.com/james-proxy/james/releases/download/v#{version}/james-#{version}.dmg"
  appcast 'https://github.com/james-proxy/james/releases.atom'
  name 'James'
  homepage 'https://github.com/james-proxy/james'

  app 'James.app'
end
