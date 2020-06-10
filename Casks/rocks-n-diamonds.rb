cask 'rocks-n-diamonds' do
  version '4.1.4.0'
  sha256 'b1b609dc428d239b79eb805d4cfd0be6746e2d195dea8d1a9f798330f1da3e8f'

  url "https://www.artsoft.org/RELEASES/macosx/rocksndiamonds/rocksndiamonds-#{version}.dmg"
  appcast 'https://www.artsoft.org/RELEASES/macosx/rocksndiamonds/'
  name 'Rocks\'n\'Diamonds'
  homepage 'https://www.artsoft.org/rocksndiamonds/'

  app 'Rocks\'n\'Diamonds.app'
end
