cask 'datagrip' do
  version '1.0.1'
  sha256 'ffc07b732b7798d70fd1c75fe8c448dead93b1b6d3dc7934000e188a63d17f90'

  url "https://download.jetbrains.com/datagrip/datagrip-#{version}-custom-jdk-bundled.dmg"
  name 'DataGrip'
  homepage 'https://www.jetbrains.com/datagrip/'
  license :commercial

  app 'DataGrip.app'
end
