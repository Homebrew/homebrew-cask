class Prey < Cask
  url 'http://preyproject.com/releases/current/prey-0.6.0-mac-batch.mpkg.zip'
  homepage 'https://preyproject.com'
  version '0.6.0'
  sha1 'cb16471070e4c998d6178e7e96284b908c4ad18b'
  install 'prey-0.6.0-mac-batch.mpkg'
  uninstall :pkgutil => 'com.forkhq.prey'

  def caveats; <<-EOS.undent
    Prey requires an API key to be installed. If None is found, installation will fail.
    To set up your API key, set it as an environment variable during installation like this:

        brew cask uninstall prey
        API_KEY="abcdef123456" brew cask install prey

    EOS
  end
end
