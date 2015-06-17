cask :v1 => 'cakebrew' do
  version '1.1.1'
  sha256 '48c560cfbec435e5b57aaf3a2d9c8696547b3b9c1d46a862abcc4b67f1906d87'

  url "https://www.cakebrew.com/files/cakebrew-#{version}.dmg"
  appcast 'https://www.cakebrew.com/appcast/profileInfo.php',
          :sha256 => 'bdb3d9549a7e8074382082ae99a65ca0799c8cef5acc4966ee03455bc6c59775'
  name 'Cakebrew'
  homepage 'https://www.cakebrew.com/'
  license :gpl

  app 'Cakebrew.app'
end
