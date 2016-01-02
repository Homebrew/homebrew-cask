cask 'cd-to' do
  version '2.6.0'
  sha256 'a92def521d332a373f655a41338d0ec18dfaa6e24eb9ec2ca6df281398db3d46'

  url "https://github.com/jbtule/cdto/releases/download/#{version.gsub('.', '_')}/cdto_#{version.gsub('.', '_').gsub(/_\d$/, '')}.zip"
  appcast 'https://github.com/jbtule/cdto/releases.atom',
          :sha256 => 'd1bd6448f379a5260875f0a04e932c71ea223ddaf1fdde45da3dda93228ab5f0'
  name 'cd to'
  homepage 'https://github.com/jbtule/cdto'
  license :mit

  app "cdto_#{version.gsub('.', '_').gsub(/_\d$/, '')}/terminal/cd to.app"

  caveats <<-EOS.undent
    To complete installation:
    1. Open the the Applications folder in finder.
    2. Drag "cd to.app" onto the Finder toolbar while holding down the command(⌘) and option(⌥) keys.

    To use, just click on the new button and instantly opens a new Terminal.app window.

    Only "cd to.app" for Terminal.app has been added to the Applications folder. The iterm and x11_term versions are also staged.
  EOS
end
