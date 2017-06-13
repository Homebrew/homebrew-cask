cask 'rocks-n-diamonds' do
  version '4.0.0.2'
  sha256 '7f6bf63295fba6e69fd78cc5ab831214aaf353fef475b36d7ba087a55d5afbdf'

  url "https://www.artsoft.org/RELEASES/macosx/rocksndiamonds/rocksndiamonds-#{version}.dmg"
  appcast 'https://www.artsoft.org/RELEASES/macosx/rocksndiamonds/',
          checkpoint: '9cabdcb65bdfcdee18a583983883567e917f20009d5b1a2faf5c64d85d1f4442'
  name 'Rocks\'n\'Diamonds'
  homepage 'https://www.artsoft.org/rocksndiamonds/'

  app 'Rocks\'n\'Diamonds.app'
end
