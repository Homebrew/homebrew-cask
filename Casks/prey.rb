cask 'prey' do
  version '1.6.3'
  sha256 'eef70a6ca7e94163edb2bea4abbaea0c2e369202d2d2136c0f3e425465eacfb6'

  # prey-releases.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://prey-releases.s3.amazonaws.com/node-client/#{version}/prey-mac-#{version}-x86.pkg"
  name 'Prey'
  homepage 'https://preyproject.com'

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
