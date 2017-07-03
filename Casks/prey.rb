cask 'prey' do
  version '1.6.8'
  sha256 '85e6ff86a50e4a3e4cf59d153c36e1fbc99ed4187d993c75aa80a49de4dc7b11'

  url "https://downloads.preyproject.com/prey-client-releases/node-client/#{version}/prey-mac-#{version}-x64.pkg"
  appcast 'https://github.com/prey/prey-node-client/releases.atom',
          checkpoint: '1833d6ba69ae2188b08f768d2ad368f1d7718a3c17c14b82ff9aa6a409e7d549'
  name 'Prey'
  homepage 'https://www.preyproject.com/'

  pkg "prey-mac-#{version}-x64.pkg"

  uninstall pkgutil:   'com.prey.agent',
            launchctl: 'com.prey.agent'

  caveats <<-EOS.undent
    Prey requires your API key, found in the bottom-left corner of
    the Prey web account Settings page, to complete installation.
    The API key may be set as an environment variable as follows:

      API_KEY="abcdef123456" brew cask install prey
  EOS
end
