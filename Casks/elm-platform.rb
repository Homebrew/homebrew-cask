cask 'elm-platform' do
  version '0.18'
  sha256 '32671f6497f85c709761e47fceb6b54cf8b74afeeca0ba23ce095492d32995ce'

  # 44a95588fe4cc47efd96-ec3c2a753a12d2be9f23ba16873acc23.ssl.cf2.rackcdn.com was verified as official when first introduced to the cask
  url "https://44a95588fe4cc47efd96-ec3c2a753a12d2be9f23ba16873acc23.ssl.cf2.rackcdn.com/Elm-Platform-#{version}.pkg"
  name 'Elm'
  homepage 'http://www.elm-lang.org/'

  pkg "Elm-Platform-#{version}.pkg"

  uninstall pkgutil: 'org.elm-lang.*',
            delete:  '/usr/local/share/elm'
end
