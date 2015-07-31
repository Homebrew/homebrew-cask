cask :v1 => 'clion' do
  version '1.0.5'
  sha256 '5148fbbff2cb70d1bf11bb3c72cf4cf099af993f0e8caa54c7443a64f3597010'

  url "https://download.jetbrains.com/cpp/CLion-#{version}.dmg"
  name 'CLion'
  homepage 'https://www.jetbrains.com/clion'
  license :commercial

  app 'CLion.app'

  zap :delete => [
                  '~/Library/Preferences/com.jetbrains.CLion.plist',
                  '~/Library/Preferences/clion10',
                  '~/Library/Application Support/clion10',
                  '~/Library/Caches/clion10',
                  '~/Library/Logs/clion10',
                 ]

  conflicts_with :cask => 'clion-bundled-jdk'
  caveats <<-EOS.undent
    #{token} requires Java 6 like any other IntelliJ-based IDE.
    You can install it with

      brew cask install caskroom/homebrew-versions/java6

    The vendor (JetBrains) doesn't support newer versions of Java (yet)
    due to several critical issues, see details at
    https://intellij-support.jetbrains.com/entries/27854363
  EOS
end
