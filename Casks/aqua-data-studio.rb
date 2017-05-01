cask 'aqua-data-studio' do
  version '18.0.9'
  sha256 '5aeccec70372bfe55d105fd3b28995c619479e3de1b4b669196614ad8b259170'

  url "http://www.aquafold.com/download/v#{version.major}.0.0/osx/ads-osx-#{version}.tar.gz"
  appcast 'http://www.aquafold.com/download/',
          checkpoint: 'c16f1295a5a161c3be08b629a610254e39cbb45138e9db6d7860caf6d42428af'
  name 'Aquafold Aqua Data Studio'
  homepage 'http://www.aquafold.com/aquadatastudio.html'

  app 'Aqua Data Studio.app'
end
