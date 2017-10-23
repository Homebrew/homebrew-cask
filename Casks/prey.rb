cask 'prey' do
  version '1.7.1'
  sha256 'd7e1a381accec8925dbcd2fee4bfdb9ed7f581941e8cb0c0558060334c7d1527'

  url "https://downloads.preyproject.com/prey-client-releases/node-client/#{version}/prey-mac-#{version}-x64.pkg"
  appcast 'https://github.com/prey/prey-node-client/releases.atom',
          checkpoint: '30beef6887032a83830b7fa17f36f4a619303b9e8164dde740526125f9ec5d40'
  name 'Prey'
  homepage 'https://www.preyproject.com/'

  pkg "prey-mac-#{version}-x64.pkg"

  uninstall pkgutil:   'com.prey.agent',
            launchctl: 'com.prey.agent'

  caveats <<~EOS
    Prey requires your API key, found in the bottom-left corner of
    the Prey web account Settings page, to complete installation.
    The API key may be set as an environment variable as follows:

      API_KEY="abcdef123456" brew cask install prey
  EOS
end
