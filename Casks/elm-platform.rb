cask :v1 => 'elm-platform' do
  version '0.16'
  sha256 'e55a6e993264b29bf917df79ccb383ea99260082108d8c07b668718325478f1f'

  url "http://install.elm-lang.org/Elm-Platform-#{version}.pkg"
  name 'Elm'
  homepage 'http://www.elm-lang.org'
  license :bsd

  pkg "Elm-Platform-#{version}.pkg"

  uninstall :pkgutil => 'org.elm-lang.*',
            :delete => '/usr/local/share/elm'
end
