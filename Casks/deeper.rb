class Deeper < Cask
  version 'latest'
  sha256 :no_check

  url 'http://joel.barriere.pagesperso-orange.fr/dl/109/Deeper.dmg'
  homepage 'http://www.titanium.free.fr/downloaddeeper.php'

  link 'Deeper.app'
  caveats <<-EOS.undent
    This version of Deeper is for OS X Mavericks only. If you are using other versions of OS X, please run 'brew tap caskroom/versions' and install deeper-mountainlion / deeper-lion / deeper-snowleopard
    EOS
end
