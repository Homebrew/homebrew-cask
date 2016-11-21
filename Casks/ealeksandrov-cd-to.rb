cask 'ealeksandrov-cd-to' do
  version '2.7.0'
  sha256 '979667c59da350e1a1f6288d20b8cf84ccf81a96b63f1585ad06fd82acc36684'

  url "https://github.com/ealeksandrov/cdto/releases/download/#{version.dots_to_underscores}/cd_to_#{version.major_minor.dots_to_underscores}.zip"
  appcast 'https://github.com/ealeksandrov/cdto/releases.atom',
          checkpoint: '64945ad97b2ff98dc41ec2cd05df9a71af6bf93faac41a75ff1f1a21a063e141'
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
