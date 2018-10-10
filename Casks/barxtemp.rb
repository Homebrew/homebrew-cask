cask 'barxtemp' do
  version '1.3.3'
  sha256 '232286bc63a136ceca759addb6108a5b66d2b18d1db1df728c80296ec5847c65'

  # github.com/Gabriele91/barXtemp was verified as official when first introduced to the cask
  url "https://github.com/Gabriele91/barXtemp/releases/download/#{version}/barXtemp.app.zip"
  appcast 'https://github.com/Gabriele91/barXtemp/releases.atom'
  name 'barXtemp'
  homepage 'https://gabriele91.github.io/barXtemp/'

  depends_on macos: '>= :mountain_lion'

  app 'barXtemp.app'
end
