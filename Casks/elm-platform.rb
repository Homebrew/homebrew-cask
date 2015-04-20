cask :v1 => 'elm-platform' do
  version '0.15'
  sha256 'cb4a6a6510a231cf1c0109b892b2aea1f0139d6454c93b1568d3dfcf8df9def0'

  url "http://install.elm-lang.org/Elm-Platform-#{version}.pkg"
  name 'Elm'
  homepage 'http://www.elm-lang.org'
  license :bsd

  pkg "Elm-Platform-#{version}.pkg"

  uninstall :pkgutil => 'org.elm-lang.*',
            :delete => '/usr/local/share/elm'
end
