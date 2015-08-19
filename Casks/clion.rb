cask :v1 => 'clion' do
  version '1.1'
  sha256 'b7e4e719885c56530b9b1f524bcfbce457cbe139dbbf092a457bcdd317fca045'

  url "https://download.jetbrains.com/cpp/CLion-#{version}.dmg"
  name 'CLion'
  homepage 'https://www.jetbrains.com/clion'
  license :commercial

  app 'CLion.app'

  zap :delete => [
                  '~/Library/Preferences/com.jetbrains.CLion.plist',
                  '~/Library/Preferences/clion11',
                  '~/Library/Application Support/clion11',
                  '~/Library/Caches/clion11',
                  '~/Library/Logs/clion11',
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
