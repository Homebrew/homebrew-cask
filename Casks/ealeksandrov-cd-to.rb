cask 'ealeksandrov-cd-to' do
  version '2.8.0'
  sha256 'bcc450c23da12a2e3b82ad60ca3698b0464ee96b11cc077348d26ad1b2439600'

  url "https://github.com/ealeksandrov/cdto/releases/download/#{version.dots_to_underscores}/cd_to_#{version.major_minor.dots_to_underscores}.zip"
  appcast 'https://github.com/ealeksandrov/cdto/releases.atom',
          checkpoint: 'a4e8fc8ff9b2927e3b12198d1d9cf9d309be58f5c88261d11ef38363e2c07957'
  name 'cd_to'
  homepage 'https://github.com/ealeksandrov/cdto'

  app "cd_to_#{version.major_minor.dots_to_underscores}/terminal/cd_to.app"

  caveats <<-EOS.undent
    To complete installation:
    1. Open the the Applications folder in finder.
    2. Drag "cd_to.app" onto the Finder toolbar while holding down the command(⌘) and option(⌥) keys.

    To use, just click on the new button and instantly opens a new Terminal.app window.

    Only "cd to.app" for Terminal.app has been added to the Applications folder. The iterm and x11_term versions are also staged.
  EOS
end
