cask 'octave' do
  version '3.8.2-1'
  sha256 'a7a1e11038665a56df9282531873c1bffaa65872069ac914377b8c910f3b1fd8'

  # sourceforge.net is the official download host per the vendor homepage
  url "https://downloads.sourceforge.net/sourceforge/octave/GNU_Octave_#{version}.dmg"
  name 'Octave'
  homepage 'https://gnu.org/software/octave/'
  license :gpl

  pkg "Octave-#{version}.mpkg"

  uninstall quit:    'org.octave.Octave',
            pkgutil: [
                       'org.macports.octave-next',
                       'org.octave.cli-app',
                       'org.octave.gui-app',
                     ],
            delete:  "/usr/local/octave/#{version.sub(%r{-.*}, '')}"

  zap       rmdir: '/usr/local/octave'
end
