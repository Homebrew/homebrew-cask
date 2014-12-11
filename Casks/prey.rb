cask :v1 => 'prey' do
  version '0.6.4'
  sha256 '361996d067539da7881aa3618b737ba4a0846df13ca8c9b8b07151d42f81fb86'

  url "https://preyproject.com/releases/current/prey-#{version}-mac-batch.mpkg.zip"
  homepage 'https://preyproject.com'
  license :unknown    # todo: improve this machine-generated value

  pkg "prey-#{version}-mac-batch.mpkg"

  uninstall :pkgutil => 'com.forkhq.prey'
  caveats <<-EOS.undent
    To complete installation, Prey requires an API key. It may be set
    as an environment variable as follows:

      API_KEY="abcdef123456" brew cask install prey
  EOS
end
