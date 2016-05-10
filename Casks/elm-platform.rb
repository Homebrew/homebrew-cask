cask 'elm-platform' do
  version '0.17'
  sha256 '0df085e6c5d08722766abf79ffb1f9908e5062463f639923cecdc93ae30e8f27'

  url "http://install.elm-lang.org/Elm-Platform-#{version}.pkg"
  name 'Elm'
  homepage 'http://www.elm-lang.org'
  license :bsd

  pkg "Elm-Platform-#{version}.pkg"

  uninstall pkgutil: 'org.elm-lang.*',
            delete:  '/usr/local/share/elm'
end
