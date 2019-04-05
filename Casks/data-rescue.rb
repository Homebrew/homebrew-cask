cask 'data-rescue' do
  version '5.0.8'
  sha256 '22b298f0ba27ddecf03da11064f716dc8529a0fc20eb649a6dd14b4160e58a98'

  url "https://downloads.prosofteng.com/dr/Data_Rescue_#{version}.dmg"
  appcast "https://www.prosofteng.com/resources/dr#{version.major}/dr#{version.major}_updates_mac.xml"
  name "Data Rescue #{version.major}"
  homepage 'https://www.prosofteng.com/data-rescue-recovery-software/'

  app 'Data Rescue.app'
end
