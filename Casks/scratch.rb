cask :v1 => 'scratch' do
  version '441.1'
  sha256 'f04a3157328e9e3e536e4b52869be55162a0115eea658632d43a8dbd3e19e426'

  url "https://scratch.mit.edu/scratchr2/static/sa/Scratch-#{version}.dmg"
  name 'Scratch'
  homepage 'https://scratch.mit.edu/scratch2download/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  installer :script => 'Install Scratch 2.app/Contents/MacOS/Install Scratch 2',
            :args   => %w[-silent],
            :sudo   => true

  uninstall :script => {
              :executable => '/Applications/Utilities/Adobe AIR Application Installer.app/Contents/MacOS/Adobe AIR Application Installer',
              :args => %w[-uninstall -silent /Applications/Scratch\ 2.app]
            }

  depends_on :cask => 'adobe-air'
end
