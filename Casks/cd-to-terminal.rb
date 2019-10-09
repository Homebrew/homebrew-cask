cask 'cd-to-terminal' do
  version '3.0'
  sha256 'ced82da81b9b3448280b5c465c6649c93a876895de0142a396efca489c7b59b6'

  url "https://github.com/jbtule/cdto/releases/download/v#{version}/cdto_#{version.major_minor.dots_to_underscores}.zip"
  appcast 'https://github.com/jbtule/cdto/releases.atom'
  name 'cd to'
  homepage 'https://github.com/jbtule/cdto'

  # Renamed to avoid conflict with cd-to-iterm.
  app "cdto_#{version.major_minor.dots_to_underscores}/terminal/cd to.app", target: 'cd to terminal.app'

  caveats <<~EOS
    To complete installation:
    1. Open the the Applications folder in finder.
    2. Drag "cd to.app" onto the Finder toolbar while holding down the command(⌘) and option(⌥) keys.

    To use, just click on the new button and instantly opens a new Terminal.app window.

    Only "cd to.app" for Terminal.app has been added to the Applications folder. The iTerm and x11_term versions are also staged.
  EOS
end
