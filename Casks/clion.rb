cask :v1 => 'clion' do
  version '1.0'
  sha256 '0ff584ea63a2aff1843ba228d7185c8b6af9efac1d4a6a690a24565ee53aec35'

  url "https://download.jetbrains.com/cpp/CLion-#{version}.dmg"
  name 'CLion'
  homepage 'http://www.jetbrains.com/clion'
  license :commercial

  app 'CLion.app'

  conflicts_with :cask => 'clion-bundled'
  caveats <<-EOS.undent
    #{token} requires Java 6 like any other IntelliJ-based IDE.
    You can install it with

      brew cask install caskroom/homebrew-versions/java6

    The vendor (JetBrains) doesn't support newer versions of Java (yet)
    due to several critical issues, see details at
    https://intellij-support.jetbrains.com/entries/27854363
  EOS
end
