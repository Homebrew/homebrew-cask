cask 'haskell-platform' do
  version '8.2.1'
  sha256 '05fc22d2cefdf67f1da2f62a90fda73a746accd08b44ec197046972b82afee06'

  url "https://haskell.org/platform/download/#{version}/Haskell%20Platform%20#{version}%20Full%2064bit-signed.pkg"
  appcast 'https://github.com/haskell/haskell-platform/releases.atom',
          checkpoint: 'b2f433fe2215a578fe7f1315b737c7d39d7d69e1a27ef58f0e68ee3e62c6ac63'
  name 'Haskell Platform'
  homepage 'https://www.haskell.org/platform/'

  pkg "Haskell Platform #{version} Full 64bit-signed.pkg"

  uninstall script:  {
                       executable: '/Library/Haskell/bin/uninstall-hs',
                       args:       ['all', '--remove'],
                       sudo:       true,
                     },
            pkgutil: 'org.haskell.HaskellPlatform.*'
end
