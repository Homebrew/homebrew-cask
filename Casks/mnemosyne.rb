cask 'mnemosyne' do
  version '2.3.5'
  sha256 '88c593fd7cdf2ceb42bf1af9977765b7a233a42185181ae873b960cf644211b7'

  # sourceforge.net is the official download host per the vendor homepage
  url "http://downloads.sourceforge.net/project/mnemosyne-proj/mnemosyne/mnemosyne-#{version}/Mnemosyne-#{version}.dmg"
  appcast 'http://sourceforge.net/p/mnemosyne-proj/activity/feed?source=project_activity',
          checkpoint: 'a8f3a1d3ec76cfbc00c91c8957abb728e742e61860bc694c355421e3f8f0d8bc'
  name 'Mnemosyne'
  homepage 'http://mnemosyne-proj.org/'
  license :gpl

  app 'Mnemosyne.app'

  caveats <<-EOS.undent
    If you want to use LaTeX inside your flashcards, you need a LaTeX installation. You can
    get this via Homebrew Cask:

      brew cask install mactex

    Mnemosyne looks for LaTeX in the $PATH environment variable, however OS X does not set
    $PATH for applications launched via Finder.

    You can set environment variables for specific apps via Launch Services by setting the
    LSEnvironment key in the app's Info.plist file within the app bundle. You must update the
    Launch Services registry after doing this, or the changes will not be recognised.

    For example (substituting for the location of your LaTeX installation):

      plutil -insert LSEnvironment -json "{\\"PATH\\":\\"$PATH:/Library/TeX/texbin\\"}" #{staged_path}/Mnemosyne.app/Contents/Info.plist
      /System/Library/Frameworks/CoreServices.framework/Frameworks/LaunchServices.framework/Support/lsregister -v -f #{staged_path}/Mnemosyne.app
    EOS
end
