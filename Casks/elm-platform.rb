cask :v1 => 'elm-platform' do
  version '0.14.1'
  sha256 'f7fcc1d86c01498073d614508931f8bd3684d87530a5e65af4fbcf2b9bf4249d'

  url "http://install.elm-lang.org/Elm-Platform-#{version}.pkg"
  homepage 'http://www.elm-lang.org'
  license :bsd

  pkg "Elm-Platform-#{version}.pkg"

  uninstall :pkgutil => 'org.elm-lang.*',
            :delete => '/usr/local/share/elm'
end
