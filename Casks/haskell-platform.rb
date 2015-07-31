cask :v1 => 'haskell-platform' do
  version '7.10.2'
  sha256 'f6a884b6304a15056d1692ba419a6d00e883c4eee998f4f4d8b4ace3d160b54b'

  url "https://www.haskell.org/platform/download/#{version}/Haskell%20Platform%20#{version}%2064bit-signed.pkg"
  name 'Haskell Platform'
  homepage 'https://www.haskell.org/platform/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  pkg "Haskell Platform #{version} 64bit-signed.pkg"

  uninstall :script => { :executable => '/usr/bin/uninstall-hs', :args => %w[all --remove] },
            :pkgutil => 'org.haskell.HaskellPlatform.*'
end
