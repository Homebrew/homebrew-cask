class Cockatrice < Cask
  version '0.20120624-14-g7938171'
  sha256 '7549af19fba0c5a634f4c9f732201c143bbf237aa4ad2a790a1709043b93fb7a'

  url 'http://www.woogerworks.com/files/cockatrice_weeklybuilds/Cockatrice-osx_git-59b8d70.dmg'
  homepage 'http://www.woogerworks.com/'

  link 'cockatrice.app', :target => 'Cockatrice.app'
  link 'oracle.app', :target => 'Oracle.app'
end
