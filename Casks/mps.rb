cask :v1 => 'mps' do
  version '3.2.3'
  sha256 'cf6e842fbfe28035f2ab6fc4c39e97d82609ca72d5d6ffc486026772b5ddf35e'

  url "http://download-cf.jetbrains.com/mps/#{version.tr('.','')[0,2]}/MPS-#{version}-macos.dmg"
  name 'MPS'
  name 'JetBrains MPS'
  homepage 'https://www.jetbrains.com/mps'
  license :apache

  app "MPS #{version[0,3]}.app"

  zap :delete => [
                  "~/Library/Application Support/MPS#{version.tr('.','')[0,2]}",
                  "~/Library/Preferences/MPS#{version.tr('.','')[0,2]}",
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
