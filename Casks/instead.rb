cask :v1 => 'instead' do
  version '2.0.3'
  sha256 'ccad05fce186df643c1312eb07f8b6e2c537df56de54f5a2f7059830822b5500'

  url "https://downloads.sourceforge.net/project/instead/instead/#{version}/Instead-#{version}.dmg"
  homepage 'http://instead.syscall.ru/'
  license :oss

  app 'Instead.app'
end
