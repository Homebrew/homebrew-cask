cask 'data-rescue' do
  version '4.3.1'
  sha256 '108c64d72d8aad35a979110d1851d34bace82ceff372cc81f0e3917159e1915e'

  url "https://downloads.prosofteng.com/drmac/Data_Rescue_#{version}.dmg"
  appcast "https://www.prosofteng.com/resources/dr#{version.major}/dr#{version.major}_appcast.xml"
  name "Data Rescue #{version.major}"
  homepage 'https://www.prosofteng.com/data-rescue-recovery-software/'

  app "Data Rescue #{version.major}.app"
end
