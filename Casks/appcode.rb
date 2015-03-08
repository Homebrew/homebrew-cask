cask :v1 => 'appcode' do
  version '3.1.4'
  sha256 'ca623c106337dd355732200d25f2e0a4776629dd4185a01f972e9ad34b417eb4'

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
