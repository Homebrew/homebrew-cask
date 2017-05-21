cask 'nanobox' do
  version '2.1.1'
  sha256 '433efa3076ab217e04707f8707476af48b1bc2727791cfcb5230d12a9003be1b'

  # s3.amazonaws.com/tools.nanobox.io was verified as official when first introduced to the cask
  url 'https://s3.amazonaws.com/tools.nanobox.io/cli/darwin/amd64/nanobox'
  appcast 'https://github.com/nanobox-io/nanobox/releases.atom',
          checkpoint: '5a76290986958e939845f9d1f9946ee63593709f3733c319eb030c64ab7e8e26'
  name 'nanobox'
  homepage 'https://www.nanobox.io/'

  depends_on cask: 'virtualbox'
  depends_on cask: 'vagrant'
  container type: :naked

  binary 'nanobox'

  zap delete: [
                '~/.nanobox',
                '/opt/nanobox',
              ]
end
