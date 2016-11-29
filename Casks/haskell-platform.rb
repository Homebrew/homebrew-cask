cask 'haskell-platform' do
  version '8.0.1'
  sha256 'f579f8f120998faba6a9158be7b6c218f73ce65bd041046f0a2677b8cc614129'

  url "https://haskell.org/platform/download/#{version}/Haskell%20Platform%20#{version}%20Full%2064bit-signed-a.pkg"
  name 'Haskell Platform'
  homepage 'https://www.haskell.org/platform/'

  depends_on macos: '>= :snow_leopard'

  pkg "Haskell Platform #{version} Full 64bit-signed-a.pkg"

  uninstall script:  { executable: '/Library/Haskell/bin/uninstall-hs', args: %w[all --remove] },
            pkgutil: 'org.haskell.HaskellPlatform.*'
end
