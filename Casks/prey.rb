class Prey < Cask
  version '0.6.3'
  sha256 '7193cf76a776a015c7b533372506963c9ec2720966245dab1e0c02d149da1010'

  url "https://preyproject.com/releases/current/prey-#{version}-mac-batch.mpkg.zip"
  homepage 'https://preyproject.com'
  license :unknown

  pkg "prey-#{version}-mac-batch.mpkg"
  uninstall :pkgutil => 'com.forkhq.prey'
  caveats <<-EOS.undent
    To complete installation, Prey requires an API key. It may be set
    as an environment variable as follows:

      API_KEY="abcdef123456" brew cask install prey
  EOS
end
