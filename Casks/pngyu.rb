cask 'pngyu' do
  version '1.0.1'
  sha256 'f853a3566236200391a40d12df9519b39f4d30053ab6ed6f60670b7eacca6217'

  url "https://nukesaq88.github.io/Pngyu/download/Pngyu_mac_#{version.no_dots}.zip"
  appcast 'https://nukesaq88.github.io/Pngyu/',
          checkpoint: 'ee455a313a8641564434acb35d81702d6e66be518c1bb5da1da3ec9f8eb00c26'
  name 'Pngyu'
  homepage 'https://nukesaq88.github.io/Pngyu/'

  app 'Pngyu.app'
end
