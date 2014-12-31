cask :v1 => 'pngyu' do
  version '1.0.1'
  sha256 'f853a3566236200391a40d12df9519b39f4d30053ab6ed6f60670b7eacca6217'

  url "http://nukesaq88.github.io/Pngyu/download/Pngyu_mac_#{version.gsub('.','')}.zip"
  homepage 'http://nukesaq88.github.io/Pngyu/'
  license :oss

  app 'Pngyu.app'
end
