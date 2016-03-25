cask 'kkbox' do
  version '5.2.82-93733c9'
  sha256 '0cbf23a9efd190a22f6c523d3ed1e5efda44b1da0a667d2724c1b7b31b7d0550'

  url "https://download.kkbox.com/files/KKBOX-#{version}.dmg"
  name 'KKBOX'
  homepage 'https://www.kkbox.com/'
  license :commercial

  app 'KKBOX.app'
end
