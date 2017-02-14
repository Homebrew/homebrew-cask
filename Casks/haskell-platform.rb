cask 'haskell-platform' do
  version '8.0.2'
  sha256 '68436aeb0472069ee9055fc16a737af55c2751b65a5dbbc157cc46b7b5bb6701'

  url "https://haskell.org/platform/download/#{version}/Haskell%20Platform%20#{version}%20Full%2064bit-signed.pkg"
  appcast 'https://github.com/haskell/haskell-platform/releases.atom',
          checkpoint: '31f2660e7087247e584b74c9dfed5587dca3e12d5389795366e9f46ce4b26bd6'
  name 'Haskell Platform'
  homepage 'https://www.haskell.org/platform/'

  pkg "Haskell Platform #{version} Full 64bit-signed.pkg"

  uninstall script:  {
                       executable: '/Library/Haskell/bin/uninstall-hs',
                       args:       %w[all --remove],
                     },
            pkgutil: 'org.haskell.HaskellPlatform.*'
end
