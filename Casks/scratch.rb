cask :v1 => 'scratch' do
  version '437'
  sha256 '3615721aaffc5f94512887afd5a470488bd2d33c952137c1a89a3fa1830b91a5'

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
