cask :v1 => 'scratch' do
  version '436'
  sha256 '9cfad2ccbf24ef085de21130894107c284637321d5415ae68f7327736b533c49'

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
