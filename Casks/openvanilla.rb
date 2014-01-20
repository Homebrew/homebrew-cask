class Openvanilla < Cask
  url 'http://dl.openvanilla.org/file/openvanilla/OpenVanilla-Installer-Mac-1.0.10.zip'
  homepage 'http://openvanilla.org/'
  version '1.0.10'
  sha1 '53926d5b4348344de862dd2154e2b7cac9314916'
  input_method 'OpenVanillaInstaller.app/Contents/Resources/OpenVanilla.app'

  def caveats; <<-EOS.undent
    After installing OpenVanilla, please log out and then log in again.
    EOS
  end
end
