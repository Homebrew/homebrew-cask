cask 'octave-app' do
  version '4.0.3,2016-07-11'
  sha256 'e5d5861316cce24d628255b90efa63c56f173a3b328d8e9ed3d7e227f359c54e'

  # downloads.sourceforge.net/octave was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/octave/Octave%20MacOSX%20Binary/#{version.after_comma}-binary-octave-#{version.before_comma}/octave_gui_#{version.before_comma.no_dots}_appleblas.dmg"
  appcast 'https://sourceforge.net/projects/octave/rss?path=/Octave%20MacOSX%20Binary',
          checkpoint: '8c97baf9d85701a9efef2a3ede386f86f626f28065ddf67af9dc21202a15e81a'
  name 'Octave'
  homepage 'https://www.gnu.org/software/octave/'

  app 'Octave.app'
end
