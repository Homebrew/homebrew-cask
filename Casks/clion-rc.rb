cask :v1 => 'clion-rc' do
  version '141.352.13'
  sha256 'e91cb72119470197a4f442e230c361ddcd92d6e66b28c8b3ab5e3a234e07262e'

  url "http://download-cf.jetbrains.com/cpp/CLion-#{version}.dmg"
  name 'CLion RC'
  name 'CLion'
  homepage 'http://www.jetbrains.com/clion/'
  license :commercial

  app 'CLion.app'

  caveats <<-EOS.undent
    #{token} requires Java 6 like any other IntelliJ-based IDE.
    You can install it with

      brew cask install caskroom/homebrew-versions/java6

    The vendor (JetBrains) doesn't support newer versions of Java (yet)
    due to several critical issues, see details at
    https://intellij-support.jetbrains.com/entries/27854363
  EOS
end
