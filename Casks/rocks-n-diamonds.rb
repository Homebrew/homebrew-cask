cask 'rocks-n-diamonds' do
  version '4.0.1.0'
  sha256 '340df901fafe068b6c49798920a61fad921f18bc1bc6e3e5478d0465c7f153ff'

  url "https://www.artsoft.org/RELEASES/macosx/rocksndiamonds/rocksndiamonds-#{version}.dmg"
  appcast 'https://www.artsoft.org/RELEASES/macosx/rocksndiamonds/',
          checkpoint: '098b882374d98dccb75cc5e6ae0a3c1f9b3dc2cf1d58898b8128f3d86ba33f7c'
  name 'Rocks\'n\'Diamonds'
  homepage 'https://www.artsoft.org/rocksndiamonds/'

  app 'Rocks\'n\'Diamonds.app'
end
