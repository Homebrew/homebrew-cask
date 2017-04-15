cask 'prey' do
  version '1.6.6'
  sha256 '9320748f34804fa69f9526692151fa0a2c21de175e095f676fc5b41f64a55530'

  # prey-releases.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://prey-releases.s3.amazonaws.com/node-client/#{version}/prey-mac-#{version}-x86.pkg"
  appcast 'https://github.com/prey/prey-node-client/releases.atom',
          checkpoint: '83e37aa898a33accd7860a9a600e5979155b24d150f7476a6938465a3078247c'
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
