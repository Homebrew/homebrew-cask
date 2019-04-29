cask 'quaternion' do
  version '0.0.9.4'
  sha256 'c65511dfaeaa0f9b2fc733c554d2bc9cc18088b0093db5c859c560a43e41c38c'

  url "https://github.com/QMatrixClient/Quaternion/releases/download/#{version}/quaternion-#{version}.dmg"
  appcast 'https://github.com/QMatrixClient/Quaternion/releases.atom'
  name 'Quaternion'
  homepage 'https://github.com/QMatrixClient/Quaternion'

  app 'quaternion.app'
end
