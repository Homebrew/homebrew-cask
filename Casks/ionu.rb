class Ionu < Cask
  version 'latest'
  sha256 :no_check

  url 'https://isis.ionu.nu/release/OSX/IONU.dmg'
  appcast 'https://isis.ionu.nu/release/OSX/appcast.xml'
  homepage 'https://ionu.com'

  link 'IONU.app'
end
