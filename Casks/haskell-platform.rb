cask 'haskell-platform' do
  if MacOS.release <= :yosemite
    version '7.10.2-a'
    sha256 'dd1b64ecec95178044e12a08d9038f1e2156bbd51537da07b18832531b637672'
  else
    version '7.10.3'
    sha256 'b0bdfd06cd827f610aa3a60a99787bda652ad88023ddcbf7a73caed8934f4427'
  end

  url "https://www.haskell.org/platform/download/#{version.sub(%r{-.*}, '')}/Haskell%20Platform%20#{version}%2064bit.pkg"
  name 'Haskell Platform'
  homepage 'https://www.haskell.org/platform/'
  license :bsd

  depends_on macos: '>= :snow_leopard'

  pkg "Haskell Platform #{version} 64bit.pkg"

  uninstall script:  { executable: '/Library/Haskell/bin/uninstall-hs', args: %w[all --remove] },
            pkgutil: 'org.haskell.HaskellPlatform.*'
end
