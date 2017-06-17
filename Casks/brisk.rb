cask 'brisk' do
  version '0.2.1'
  sha256 'a1c5022d4c8234586cc8d11df181f9584f4d7ad28c1d872e8e25b90a7a6df9f0'

  url "https://github.com/br1sk/brisk/releases/download/#{version}/Brisk.app.tar.gz"
  appcast 'https://github.com/br1sk/brisk/releases.atom',
          checkpoint: 'f5b88f40bcbb907c8de2ef984a86158e869e4a69eb09b418d9a0276e669907f7'
  name 'Brisk'
  homepage 'https://github.com/br1sk/brisk'

  app 'Brisk.app'
end
