class Authoxy < Cask
  version '3.6'
  sha256 '921720e5bd1d7cd9f08e29bee928ea667662ba704f59340280194c8b4649b632'

  url 'http://www.hrsoftworks.net/downloads/Authoxy3.6.dmg'
  homepage 'http://www.hrsoftworks.net'

  pkg 'Authoxy (double click me).pkg'
  uninstall :pkgutil => 'net.hrsoftworks.authoxy.*',
            :files => [
                       "#{ENV['HOME']}/Library/Preferences/net.hrsoftworks.AuthoxyPref.plist",
                       '/tmp/authoxyd.pid',
                      ]
end
