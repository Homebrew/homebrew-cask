cask 'haskell-platform' do
  version '8.4.2'
  sha256 'bae4dad218a8aa19dd8cd7297e538d5a2c6894616edcecc0b4b874c1101a68f0'

  url "https://haskell.org/platform/download/#{version}/Haskell%20Platform%20#{version}%20Full%2064bit-signed.pkg"
  appcast 'https://github.com/haskell/haskell-platform/releases.atom',
          checkpoint: '130ebdffff4eb3659662a01c16a929352f68ba0139d7b7b9d1b5149b07e55266'
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
