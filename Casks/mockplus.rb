cask :v1 => 'mockplus' do
  version '2.0.9.8'
  sha256 'e21fcab3a9c8a1c60f88cb5d2dfc2000ca7f443a665ab3614972f796d1478fc2'

  url "http://cdn.mockplus.cn/software/osx/Mockplus_v#{version}.dmg"
  name 'Mockplus'
  name '摩客'
  homepage 'https://www.mockplus.cn/'
  license :freemium

  app 'Mockplus.app'
end
