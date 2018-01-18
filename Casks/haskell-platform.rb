cask 'haskell-platform' do
  version '8.2.2'
  sha256 '24d6ec3a30e06a6484108a6f6ca01a3260b1aadcef2ba4c4404348945ad77b92'

  url "https://haskell.org/platform/download/#{version}/Haskell%20Platform%20#{version}%20Full%2064bit-signed.pkg"
  appcast 'https://github.com/haskell/haskell-platform/releases.atom',
          checkpoint: '7eb030d6bca927ea8cb39a42191efc44a407bda40b2cae74816fa35db0a0683c'
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
