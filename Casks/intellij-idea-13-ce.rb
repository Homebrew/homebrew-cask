cask :v1 => 'intellij-idea-13-ce' do
  version '13.1.6'
  sha256 '862b8b4b8474f88e9df930185b035c65b54e71125796f591dea28cff7db929eb'

  url "http://download.jetbrains.com/idea/ideaIC-#{version}.dmg"
  name 'IntelliJ IDEA Community Edition'
  homepage 'https://www.jetbrains.com/idea/'
  license :apache

  app 'IntelliJ IDEA 13 CE.app'

  zap :delete => [
                  '~/Library/Application Support/IdeaIC13',
                  '~/Library/Preferences/IdeaIC13',
                  '~/Library/Caches/IdeaIC13',
                  '~/Library/Logs/IdeaIC13',
                 ]

  caveats <<-EOS.undent
    #{token} requires Java 6 like any other IntelliJ-based IDE.
    You can install it with

      brew cask install caskroom/homebrew-versions/java6

    The vendor (JetBrains) doesn't support newer versions of Java (yet)
    due to several critical issues, see details at
    https://intellij-support.jetbrains.com/entries/27854363
  EOS
end
