cask 'prey' do
  version '1.7.3'
  sha256 'c6d2ab4f89d2c192397a586369d2c2c815943404dd1bbaea357fdbf6186feae8'

  url "https://downloads.preyproject.com/prey-client-releases/node-client/#{version}/prey-mac-#{version}-x64.pkg"
  appcast 'https://github.com/prey/prey-node-client/releases.atom',
          checkpoint: 'e044eb08fd14c86143fc3e5e6d4e54d10757694ef73aa04ee1083974bf1caba0'
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
