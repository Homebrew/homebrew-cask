cask 'elm-platform' do
  version '0.18'
  sha256 '32671f6497f85c709761e47fceb6b54cf8b74afeeca0ba23ce095492d32995ce'

  url "http://install.elm-lang.org/Elm-Platform-#{version}.pkg"
  name 'Elm'
  homepage 'http://www.elm-lang.org/'

  pkg "Elm-Platform-#{version}.pkg"

  uninstall pkgutil: 'org.elm-lang.*',
            delete:  '/usr/local/share/elm'
end
