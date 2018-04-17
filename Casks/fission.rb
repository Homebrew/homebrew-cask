cask 'fission' do
  version '2.4.1'
  sha256 'cbf9baea4899fe6f054e48609fd6ff6dae7c01d36e9ff8078caa52a1e16262bc'

  url 'https://rogueamoeba.com/fission/download/Fission.zip'
  appcast 'https://rogueamoeba.com/fission/releasenotes.php',
          checkpoint: 'de5b3fdc5a745ac5e12ec2c4e079860808ce1ec7b21a8fd8e7a0a87950aa06a3'
  name 'Fission'
  homepage 'https://rogueamoeba.com/fission/'

  app 'Fission.app'
end
