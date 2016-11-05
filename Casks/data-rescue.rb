cask 'data-rescue' do
  version '4.3.1'
  sha256 '108c64d72d8aad35a979110d1851d34bace82ceff372cc81f0e3917159e1915e'

  url "https://downloads.prosofteng.com/drmac/Data_Rescue_#{version}.dmg"
  appcast "https://www.prosofteng.com/resources/dr#{version.major}/dr#{version.major}_appcast.xml",
          checkpoint: '27110ccfe0def3f4de8cd75c4105f6e9edfecbf0dfc46d07a33d41acac49d283'
  name "Data Rescue #{version.major}"
  homepage 'https://www.prosofteng.com/products/data_rescue.php'

  app "Data Rescue #{version.major}.app"
end
