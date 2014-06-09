class Safemonk < Cask
  url 'https://www.safemonk.com/downloads/osx'
  appcast 'https://www.safemonk.com:/data/client/osx/appcast.xml'
  homepage 'https://www.safemonk.com/'
  version 'latest'
  sha256 :no_check
  link 'SafeMonk.app'
end
