cask 'elm-platform' do
  version '0.16'
  sha256 '8d87aa2737c4c9950fdbdb1f8f1b154b28fd5c27e7b1bfb3e0bdbcc5fc6cc603'

  url "http://install.elm-lang.org/Elm-Platform-#{version}.pkg"
  name 'Elm'
  homepage 'http://www.elm-lang.org'
  license :bsd

  pkg "Elm-Platform-#{version}.pkg"

  uninstall pkgutil: 'org.elm-lang.*',
            delete:  '/usr/local/share/elm'
end
