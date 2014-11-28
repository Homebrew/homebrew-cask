cask :v1 => 'haskell-platform' do
  version '2014.2.0.0'
  sha256 '62f39246ad95dd2aed6ece5138f6297f945d2b450f215d074820294310e0c48a'

  url "http://www.haskell.org/platform/download/#{version}/Haskell%20Platform%20#{version}%2064bit.signed.pkg"
  homepage 'http://www.haskell.org/platform/'
  license :unknown

  pkg "Haskell Platform #{version} 64bit.signed.pkg"

  uninstall :script => { :executable => '/usr/bin/uninstall-hs', :args => %w[all --remove] },
            :pkgutil => 'org.haskell.HaskellPlatform.*'
end
