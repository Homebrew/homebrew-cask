cask 'amazon-chime' do
  version '4.0.5551'
  sha256 '983a5384a0d2d273104360a98f69e4565c7469bc343c61df8a02055e9af6b389'

  url "https://clients.chime.aws/mac/releases/AmazonChime-OSX-#{version}.dmg"
  appcast 'https://clients.chime.aws/mac/appcast',
          checkpoint: 'f46a2fb67618ea892d9043834acbfe6f3df7f0c7deca51868dc4c90781bfcab7'
  name 'Amazon Chime'
  homepage 'https://chime.aws/'

  app 'Amazon Chime.app'
end
