class Evasi0n7 < Cask
  url ''
  homepage 'http://evasi0n.com'
  version '1.0.1'
  sha1 '12b98c49046157b6206d1c099fe872d6c5e79fb1'
  link 'evasi0n 7.app'

  def caveats; <<-EOS.undent
    The possibility exists Evasi0n7 installs things without user permission.
    Only install if you trust this developer.
    More information can be found on the developers website:
    http://www.evad3rs.net/2013/12/jailbreak-704-703-702-701-70-with.html
    EOS
  end
end
