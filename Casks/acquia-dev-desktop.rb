cask :v1 => 'acquia-dev-desktop' do
  version '2-2015-04-03'
  sha256 '958d23385827695f3bc79d3d5b78995fdb9c5dfa5528d2b03efe321aa8fb008b'

  url "http://www.acquia.com/sites/default/files/downloads/dev-desktop/AcquiaDevDesktop-#{version}.dmg"
  name 'Acquia Dev Desktop'
  homepage 'https://www.acquia.com/products-services/dev-desktop'
  license :gratis

  installer :script => 'Acquia Dev Desktop Installer.app/Contents/MacOS/installbuilder.sh',
            :args => ['--mode' , 'unattended', '--unattendedmodeui', 'none'],
            :sudo => true

  uninstall :script => {
                        :executable => '/Applications/DevDesktop/uninstall.app/Contents/MacOS/installbuilder.sh',
                        :args => ['--mode' , 'unattended', '--unattendedmodeui', 'none'],
                        :sudo => true,
                       }
end
