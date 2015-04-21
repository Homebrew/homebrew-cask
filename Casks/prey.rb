cask :v1 => 'prey' do
  version '1.3.9'
  sha256 'e01f342c4a6d57b495eaf182fc859f268fdf4f531d82560a97beb3310ec80587'

  # amazonaws.com is the official download host per the vendor homepage
  url "https://s3.amazonaws.com/prey-releases/node-client/#{version}/prey-mac-#{version}-x64.pkg"
  name 'Prey'
  homepage 'https://preyproject.com'
  license :gpl

  pkg "prey-mac-#{version}-x64.pkg"

  uninstall :pkgutil => 'com.prey.agent',
            :launchctl => 'com.prey.agent'

  caveats <<-EOS.undent
    To complete installation, Prey requires an API key. It may be set
    as an environment variable as follows:

      API_KEY="abcdef123456" brew cask install prey
  EOS
end
