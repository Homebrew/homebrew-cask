cask 'elm-platform' do
  version '0.17.1'
  sha256 '31bb75aa3d815ff7bfa05bd91685615767efa7bcea1d6432f1f5c3c07e7c1c71'

  url "http://install.elm-lang.org/Elm-Platform-#{version}.pkg"
  name 'Elm'
  homepage 'http://www.elm-lang.org'

  pkg "Elm-Platform-#{version}.pkg"

  uninstall pkgutil: 'org.elm-lang.*',
            delete:  '/usr/local/share/elm'
end
