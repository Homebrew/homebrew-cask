cask :v1 => 'mplab-x-ide' do
  version '2.35'
  sha256 '7598a662cd6bf1354a4579fafcc04cfbb82d4380df6d77ca27c917bb9ccc66fa'

  url "http://ww1.microchip.com/downloads/en/DeviceDoc/MPLABX-v#{version}-osx-installer.dmg"
  name 'MPLAB X IDE'
  homepage 'http://www.microchip.com/pagehandler/en-us/family/mplabx/home.html'
  license :commercial

  installer :manual => "MPLABX-v#{version}-osx-installer.app"

  caveats <<-EOS.undent
    MPLAB X IDE requires Java 6 or Java 7. You can install the necessary Java using
      brew cask install caskroom/versions/java6
      or
      brew cask install caskroom/versions/java7
  EOS
end
