cask :v1 => 'mps' do
  version '3.2.1'
  sha256 '3122634120c347c4ebb6e4a2de98f30fc9fa63427b607063ebb7096f4d4aec4e'

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
