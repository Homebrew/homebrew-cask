class Ionu < Cask
  url 'https://isis.ionu.nu/release/OSX/IONU.dmg'
  appcast 'https://isis.ionu.nu/release/OSX/appcast.xml'
  homepage 'https://ionu.com'
  version 'latest'
  sha256 :no_check
  link 'IONU.app'
end
