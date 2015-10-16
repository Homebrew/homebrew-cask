cask :v1 => 'prey' do
  version '1.4.2'
  sha256 '0b3c8a82ab2e437c4dd935051206598440093ac4cb74b51bac96bb6313b1c9ef'

  # amazonaws.com is the official download host per the vendor homepage
  url "https://prey-releases.s3.amazonaws.com/node-client/#{version}/prey-mac-#{version}-x64.pkg"
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
