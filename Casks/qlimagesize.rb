cask 'qlimagesize' do
  version '2.6'
  sha256 '461c59f48d58f58f3e475aec592c77d511460668e763db04a609de800072f18e'

  url "https://github.com/Nyx0uf/qlImageSize/releases/download/#{version}/qlImageSize.qlgenerator.zip"
  appcast 'https://github.com/Nyx0uf/qlimagesize/releases.atom'
  name 'qlImageSize'
  homepage 'https://github.com/Nyx0uf/qlImageSize'

  qlplugin 'qlImageSize.qlgenerator'
end
