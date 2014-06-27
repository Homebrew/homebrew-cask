class Prey < Cask
  version '0.6.3'
  sha256 '7193cf76a776a015c7b533372506963c9ec2720966245dab1e0c02d149da1010'

  url 'https://preyproject.com/releases/current/prey-0.6.3-mac-batch.mpkg.zip'
  homepage 'https://preyproject.com'

  install 'prey-0.6.3-mac-batch.mpkg'
  uninstall :pkgutil => 'com.forkhq.prey'
  caveats <<-EOS.undent
    Prey requires an API key during installation. If none is found,
    installation will fail.  To install using your API key, set it
    as an environment variable during installation like this:

      brew cask uninstall prey
      API_KEY="abcdef123456" brew cask install prey

    EOS
end
