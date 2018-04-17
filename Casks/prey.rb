cask 'prey' do
  version '1.7.4'
  sha256 'f73fffbc62a65f916cdd5733371bf2799b81a819b5675394faef0be5e4dc6ab9'

  url "https://downloads.preyproject.com/prey-client-releases/node-client/#{version}/prey-mac-#{version}-x64.pkg"
  appcast 'https://github.com/prey/prey-node-client/releases.atom',
          checkpoint: 'ea5fe6af5be6603c553162a88deade4453deb8e0f5d57d6edd1cbbce393647ee'
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
