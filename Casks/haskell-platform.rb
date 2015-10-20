cask :v1 => 'haskell-platform' do
  if MacOS.release <= :yosemite
    version '7.10.2-a'
    sha256 'dd1b64ecec95178044e12a08d9038f1e2156bbd51537da07b18832531b637672'
  else
    version '7.10.2-a1'
    sha256 '80b1c550e8c6f0a0ffbced9aee8d77956a1246e74934c9baeff355fd4cc9b8a8'
  end

  url "https://www.haskell.org/platform/download/#{version.sub(%r{-.*},'')}/Haskell%20Platform%20#{version}%2064bit-signed.pkg"
  name 'Haskell Platform'
  homepage 'https://www.haskell.org/platform/'
  license :bsd

  pkg "Haskell Platform #{version} 64bit-signed.pkg"

  uninstall :script => { :executable => '/Library/Haskell/bin/uninstall-hs', :args => %w[all --remove] },
            :pkgutil => 'org.haskell.HaskellPlatform.*'

  depends_on :macos => '>= :snow_leopard'
end
