cask 'pencil2d' do
  version '0.6.4'
  sha256 'af744904373c33f7a18a6cb52af577d13ee8ffae62dd81472fc141b549925a0b'

  # github.com/pencil2d/pencil/ was verified as official when first introduced to the cask
  url "https://github.com/pencil2d/pencil/releases/download/v#{version}/pencil2d-mac-#{version}.zip"
  appcast 'https://github.com/pencil2d/pencil/releases.atom'
  name 'Pencil2D Animation'
  homepage 'https://www.pencil2d.org/'

  depends_on macos: '>= :sierra'

  app 'Pencil2D/Pencil2D.app'
end
