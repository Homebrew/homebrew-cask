cask 'spechtlite' do
  version '0.8.1'
  sha256 '302ca8194c2787eb8d89a6b7a7bd8624ce3f3fd844bf21005d0c8d2d0031241d'

  url "https://github.com/zhuhaow/SpechtLite/releases/download/#{version}/SpechtLite.zip"
  appcast 'https://github.com/zhuhaow/SpechtLite/releases.atom',
          checkpoint: 'fe837c2b13fd661be485639228ad98b9416fc3acea9ae1a91baaf31f289890f7'
  name 'SpechtLite'
  homepage 'https://github.com/zhuhaow/SpechtLite'

  app 'SpechtLite.app'
end
