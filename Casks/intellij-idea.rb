cask :v1 => 'intellij-idea' do
  version '14.1.5'
  sha256 '50941026863e2d43f4c8dcc1c02f749c096c2d0bcf53943220314f0898efec24'

  url "https://download.jetbrains.com/idea/ideaIU-#{version}.dmg"
  name 'IntelliJ IDEA'
  homepage 'https://www.jetbrains.com/idea/'
  license :commercial

  app 'IntelliJ IDEA 14.app'

  zap :delete => [
                  '~/Library/Application Support/IntelliJIdea14',
                  '~/Library/Preferences/IntelliJIdea14',
                  '~/Library/Preferences/com.jetbrains.intellij.plist',
                 ]

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
