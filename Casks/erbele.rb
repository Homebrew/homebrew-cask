cask 'erbele' do
  version '3.8.2'
  sha256 '5c73394b138753eeb724a0bd35c14b27bea41b63e53b0072e0913a46ebcb4ce1'

  url "https://github.com/abentele/Erbele/releases/download/#{version}/Erbele_#{version}.dmg"
  appcast 'https://raw.githubusercontent.com/abentele/Erbele/master/appcast.xml',
          checkpoint: 'b331be3d0b72f91d60b0ae0b5d382c41ca79e97336c6a6527c3d706976d3a4b7'
  name 'Erbele'
  homepage 'https://github.com/abentele/Erbele'

  app 'Erbele.app'
end
