cask 'prey' do
  version '1.8.2'
  sha256 'd2abe790da0df675901f6e438484b36431a0992bee7a7607bb5f3f54e3aa13f8'

  url "https://downloads.preyproject.com/prey-client-releases/node-client/#{version}/prey-mac-#{version}-x64.pkg"
  appcast 'https://github.com/prey/prey-node-client/releases.atom'
  name 'Prey'
  homepage 'https://www.preyproject.com/'

  pkg "prey-mac-#{version}-x64.pkg"

  uninstall pkgutil:   'com.prey.agent',
            launchctl: 'com.prey.agent'

  caveats <<~EOS
    Prey requires your API key, found in the bottom-left corner of
    the Prey web account Settings page, to complete installation.
    The API key may be set as an environment variable as follows:

      HOMEBREW_NO_ENV_FILTERING=1 API_KEY="abcdef123456" brew cask install prey
  EOS
end
