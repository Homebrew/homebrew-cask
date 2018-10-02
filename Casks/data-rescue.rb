cask 'data-rescue' do
  version '5.0.6'
  sha256 'cb5dccc6d7a96a02f7cf17a238f5614aa43af26e9e9db9ef4f4d075496d4baf3'

  url "https://downloads.prosofteng.com/dr/Data_Rescue_#{version}.dmg"
  appcast "https://www.prosofteng.com/resources/dr#{version.major}/dr#{version.major}_updates_mac.xml"
  name "Data Rescue #{version.major}"
  homepage 'https://www.prosofteng.com/data-rescue-recovery-software/'

  app 'Data Rescue.app'
end
