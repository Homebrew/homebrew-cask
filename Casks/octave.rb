cask :v1 => 'octave' do
  version '3.8.0-6'
  sha256 'b51c20b109e15928350624011885e658b45009da0acb8872a1347688f8f62963'

  url "http://downloads.sourceforge.net/project/octave/Octave%20MacOSX%20Binary/2013-12-30%20binary%20installer%20of%20Octave%203.8.0%20for%20OSX%2010.9.1%20%28beta%29/GNU_Octave_#{version}.dmg"
  homepage 'https://gnu.org/software/octave/'
  license :oss

  pkg "Octave-#{version}.mpkg"
  uninstall :pkgutil => [
                         'org.macports.octave-next',
                         'org.octave.cli-app',
                         'org.octave.gui-app',
                        ],
            :delete => '/usr/local/octave/3.8.0'
end
