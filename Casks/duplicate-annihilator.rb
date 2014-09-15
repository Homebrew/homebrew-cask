class DuplicateAnnihilator < Cask
  version 'latest'
  sha256 :no_check

  url 'http://brattoo.com/propaganda/downloadDa.php'
  homepage 'http://brattoo.com/propaganda/'

  nested_container 'Duplicate Annihilator.dmg'
  app 'Duplicate Annihilator.app'
end
