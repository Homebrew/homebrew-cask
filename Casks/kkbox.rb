cask :v1 => 'kkbox' do
  version '5.0.18'
  sha256 '7e0a888eafc67e5cf040fe3ff95a00f2aa966f7e66e44406cd636c5861c90286'

  url "http://download.kkbox.com/files/KKBOX-#{version}-bf8c56b.dmg"
  homepage 'http://www.kkbox.com/'
  license :commercial

  app 'KKBOX.app'
end
