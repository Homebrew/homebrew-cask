class Prey < Cask
  url 'http://preyproject.com/releases/current/prey-0.6.2-mac-batch.mpkg.zip'
  homepage 'https://preyproject.com'
  version '0.6.2'
  sha1 'c6c8de5adeb813ecfd517aab36dc2b7391ce8498'
  install 'prey-0.6.2-mac-batch.mpkg'
  uninstall :pkgutil => 'com.forkhq.prey'
  caveats <<-EOS.undent
    Prey requires an API key during installation. If none is found,
    installation will fail.  To install using your API key, set it
    as an environment variable during installation like this:

      brew cask uninstall prey
      API_KEY="abcdef123456" brew cask install prey

    EOS
end
