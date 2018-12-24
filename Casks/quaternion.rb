cask 'quaternion' do
  version '0.0.9.3'
  sha256 '5261f10b84900a914c697dd48a229accbff8207acb71f90fde882a8716341a3e'

  url "https://github.com/QMatrixClient/Quaternion/releases/download/v#{version}/quaternion_macos.zip"
  appcast 'https://github.com/QMatrixClient/Quaternion/releases.atom'
  name 'Quaternion'
  homepage 'https://github.com/QMatrixClient/Quaternion'

  app 'quaternion.app'
end
