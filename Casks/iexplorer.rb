cask 'iexplorer' do
  version '3.9.11.0'
  sha256 '87b71208d3fe4495b18d4486a85d12e57ef0b42c752b9f5585701e193b84e0f2'

  url "https://www.macroplant.com/release/iExplorer-#{version}.dmg"
  appcast 'https://www.macroplant.com/iexplorer/ie3-appcast.xml',
          checkpoint: '07a02e60e8e19133f4d7836f6c56cc633f89062f66ae085ceae9ac950b9c7658'
  name 'iExplorer'
  homepage 'https://www.macroplant.com/iexplorer/'
  license :freemium

  depends_on macos: '>= :snow_leopard'

  app 'iExplorer.app'
end
