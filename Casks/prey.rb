cask 'prey' do
  version '1.5.1'
  sha256 '8c9e69c21d2bfb101745681fd935df308899828effda21e28be8da3ffb174746'

  # prey-releases.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://prey-releases.s3.amazonaws.com/node-client/#{version}/prey-mac-#{version}-x86.pkg"
  name 'Prey'
  homepage 'https://preyproject.com'
  license :gpl

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
