cask 'cd-to-iterm' do
  version '2.6.0'
  sha256 'a92def521d332a373f655a41338d0ec18dfaa6e24eb9ec2ca6df281398db3d46'

  url "https://github.com/jbtule/cdto/releases/download/#{version.dots_to_underscores}/cdto_#{version.major_minor.dots_to_underscores}.zip"
  appcast 'https://github.com/jbtule/cdto/releases.atom'
  name 'cd to'
  homepage 'https://github.com/jbtule/cdto'

  # Renamed to avoid conflict with cd-to-terminal.
  app "cdto_#{version.major_minor.dots_to_underscores}/iterm/cd to.app", target: 'cd to iterm.app'

  caveats <<~EOS
    To complete installation:
    1. Open the the Applications folder in finder.
    2. Drag "cd to.app" onto the Finder toolbar while holding down the command(⌘) and option(⌥) keys.

    To use, just click on the new button and instantly opens a new iTerm window.

    Only "cd to.app" for iTerm has been added to the Applications folder. The Terminal.app and x11_term versions are also staged.
  EOS
end
