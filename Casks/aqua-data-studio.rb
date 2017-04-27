cask 'aqua-data-studio' do
  version '18.0.9'
  sha256 '5aeccec70372bfe55d105fd3b28995c619479e3de1b4b669196614ad8b259170'

  url "http://www.aquafold.com/download/v#{version.major}.0.0/osx/ads-osx-#{version}.tar.gz"
  appcast 'http://www.aquafold.com/download/',
          checkpoint: '19f5e88ca3fc0b08bf19f37884b31ec697b8233d4100ba9ef9646203c9a2682c'
  name 'Aquafold Aqua Data Studio'
  homepage 'http://www.aquafold.com/aquadatastudio.html'

  app 'Aqua Data Studio.app'
end
