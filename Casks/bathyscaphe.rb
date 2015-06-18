cask :v1 => 'bathyscaphe' do
  version '2.5.0'
  sha256 '16c9c7c2ade802f735e3e10f8330f548bd8ea2192e65f5c187618603af1a7422'

  url "http://dl.sourceforge.jp/bathyscaphe/62963/BathyScaphe-#{version.gsub('.','')}-v787.dmg"
  name 'BathyScaphe'
  homepage 'http://bathyscaphe.sourceforge.jp/'
  license :oss

  app 'BathyScaphe.app'
end
