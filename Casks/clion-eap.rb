cask :v1 => 'clion-eap' do
  version '141.102.4'
  sha256 '63227a0613d0406087b045b9eb17fadcc9affaed9707e2adcce7d0c0d37ae2a0'

  url "http://download.jetbrains.com/cpp/CLion-#{version}.dmg"
  name 'CLion EAP'
  name 'CLion'
  homepage 'http://www.jetbrains.com/clion/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'CLion EAP.app'

  caveats <<-EOS.undent
    #{token} requires Java 6 like any other IntelliJ-based IDE.
    You can install it with

      brew cask install caskroom/homebrew-versions/java6

    The vendor (JetBrains) doesn't support newer versions of Java (yet)
    due to several critical issues, see details at
    https://intellij-support.jetbrains.com/entries/27854363
  EOS
end
