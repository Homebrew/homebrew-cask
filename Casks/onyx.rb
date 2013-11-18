class Onyx < Cask
  url 'http://joel.barriere.pagesperso-orange.fr/dl/109/OnyX.dmg'
  homepage 'http://www.titanium.free.fr/downloadonyx.php'
  version '2.8.1'
  sha1 '68060332fa87fb21ebae08570e6117f641a3fd59'
  link 'OnyX.app'
  
  def caveats; <<-EOS.undent
    This version of OnyX is for OS X Mavericks only. If you are using other versions of  OS X, please run 'brew tap caskroom/versions' and install onyx-mountainlion / onyx-lion / onyx-snowleopard
    EOS
  end
end
