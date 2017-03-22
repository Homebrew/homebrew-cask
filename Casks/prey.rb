cask 'prey' do
  version '1.6.5'
  sha256 'd343a28e63f58a079c8698d308d230565ab4d5ca04a064aebe7ab4ba25a8ed07'

  # prey-releases.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://prey-releases.s3.amazonaws.com/node-client/#{version}/prey-mac-#{version}-x86.pkg"
  appcast 'https://github.com/prey/prey-node-client/releases.atom',
          checkpoint: '6b1a945fa9ec384f0f3237c9096bd2794276467ef7796467f615cb1f180d2200'
  name 'Prey'
  homepage 'https://www.preyproject.com/'

  pkg "prey-mac-#{version}-x86.pkg"

  uninstall pkgutil:   'com.prey.agent',
            launchctl: 'com.prey.agent'

  caveats <<-EOS.undent
    Prey requires your API key, found in the bottom-left corner of
    the Prey web account Settings page, to complete installation.
    The API key may be set as an environment variable as follows:

      API_KEY="abcdef123456" brew cask install prey
  EOS
end
