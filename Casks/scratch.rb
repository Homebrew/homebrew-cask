cask 'scratch' do
  version '441.2'
  sha256 '46cb9b5806bea0d0b6fc111eabc5f24b18226f437643ff8173a57a394492bba0'

  url "https://scratch.mit.edu/scratchr2/static/sa/Scratch-#{version}.dmg"
  name 'Scratch'
  homepage 'https://scratch.mit.edu/scratch2download/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  installer :script => 'Install Scratch 2.app/Contents/MacOS/Install Scratch 2',
            :args   => %w[-silent],
            :sudo   => true

  uninstall :script => {
              :executable => Hbc::Container::Air::INSTALLER_PATHNAME,
              :args => %w[-uninstall -silent /Applications/Scratch\ 2.app]
            }

  depends_on :cask => 'adobe-air'
end
