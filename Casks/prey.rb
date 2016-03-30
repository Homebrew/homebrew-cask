cask 'prey' do
  version '1.5.0'
  sha256 '5068c388797ef45f03494d2da92423c6372abf3a4ca3b95001978a19b2603b01'

  # amazonaws.com is the official download host per the vendor homepage
  url "https://prey-releases.s3.amazonaws.com/node-client/#{version}/prey-mac-#{version}-x64.pkg"
  name 'Prey'
  homepage 'https://preyproject.com'
  license :gpl

  pkg "prey-mac-#{version}-x64.pkg"

  uninstall pkgutil:   'com.prey.agent',
            launchctl: 'com.prey.agent'

  caveats <<-EOS.undent
    To complete installation, Prey requires an API key. It may be set
    as an environment variable as follows:

      API_KEY="abcdef123456" brew cask install prey
  EOS
end
