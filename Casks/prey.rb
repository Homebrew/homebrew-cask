class Prey < Cask
  url 'http://preyproject.com/releases/current/prey-0.6.0-mac-batch.mpkg.zip'
  homepage 'https://preyproject.com'
  version '0.6.0'
  sha1 'cb16471070e4c998d6178e7e96284b908c4ad18b'
  install 'prey-0.6.0-mac-batch.mpkg'
  def caveats; <<-EOS.undent
    Prey requires an API key to be installed. If None is found, next step will fail.
    To set up your API key, type the following command in your terminal and relaunch Prey installation:

        export API_KEY="abcdef123456"
        brew cask uninstall prey
        brew cask install prey

    EOS
  end
end
