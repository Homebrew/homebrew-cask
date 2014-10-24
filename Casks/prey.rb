class Prey < Cask
  version '0.6.4'
  sha256 'e46b24cb602f590f8a756d7995e8720cbfc96044a303ac163194e63ba4765a00'

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
