cask :v1 => 'clion' do
  version '1.0.1'
  sha256 'c46942a263be2d9adc007c6ef8bd2484b8b770ca6330747558c34d4c2324f7d8'

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
