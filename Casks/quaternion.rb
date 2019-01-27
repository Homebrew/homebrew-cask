cask 'quaternion' do
  version '0.0.9.3'
  sha256 '5e88aba4e1ea13a202412452e5b35dd64c917952f4bed23bd1f178702957d281'

  url "https://github.com/QMatrixClient/Quaternion/releases/download/v#{version}/quaternion_macos.zip"
  appcast 'https://github.com/QMatrixClient/Quaternion/releases.atom'
  name 'Quaternion'
  homepage 'https://github.com/QMatrixClient/Quaternion'

  app 'quaternion.app'
end
