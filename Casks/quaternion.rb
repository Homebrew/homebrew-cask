cask 'quaternion' do
  version '0.0.9.4'
  sha256 'e33ecf94cbafedd3f665db8ff52764ee403af3acb45aff676788ec96225e8d03'

  url "https://github.com/QMatrixClient/Quaternion/releases/download/#{version}/quaternion-#{version}.dmg"
  appcast 'https://github.com/QMatrixClient/Quaternion/releases.atom'
  name 'Quaternion'
  homepage 'https://github.com/QMatrixClient/Quaternion'

  app 'quaternion.app'
end
