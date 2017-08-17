cask 'octave' do
  version '4.0.3'
  sha256 'e5d5861316cce24d628255b90efa63c56f173a3b328d8e9ed3d7e227f359c54e'

  url 'https://sourceforge.net/projects/octave/files/Octave%20MacOSX%20Binary/2016-07-11-binary-octave-#{version}/octave_gui_403_appleblas.dmg/download'
  name 'Octave-Forge'
  homepage 'https://sourceforge.net/projects/octave/'

  app 'Octave.app'
end
