cask 'fission' do
  version '2.4.6'
  sha256 'b14384e4c322849d2078e18aac32dca05ac1b9844806ae6e90c3fb3fcff1868f'

  url 'https://rogueamoeba.com/fission/download/Fission.zip'
  appcast 'https://rogueamoeba.com/fission/releasenotes.php'
  name 'Fission'
  homepage 'https://rogueamoeba.com/fission/'

  depends_on macos: '>= :sierra'

  app 'Fission.app'
end
