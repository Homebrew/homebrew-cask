cask :v1 => 'appcode' do
  version '3.1.7'
  sha256 '07e044187062c183af49c67259fe8ea207a846476c21d105c2643779ac4b405c'

  url "http://download.jetbrains.com/objc/AppCode-#{version}.dmg"
  name 'AppCode'
  homepage 'http://www.jetbrains.com/objc/'
  license :commercial

  app 'AppCode.app'

  caveats <<-EOS.undent
    #{token} requires Java 6 like any other IntelliJ-based IDE.
    You can install it with

      brew cask install caskroom/homebrew-versions/java6

    The vendor (JetBrains) doesn't support newer versions of Java (yet)
    due to several critical issues, see details at
    https://intellij-support.jetbrains.com/entries/27854363

    To use existing newer Java at your own risk,
    add JVMVersion=1.6+ to ~/Library/Preferences/IntelliJIdea14/idea.properties
  EOS
end
