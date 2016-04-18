cask 'dropzone' do
  version '3.5.5'
  sha256 'cf5014ca113910a2dafdb72a6c17284aaf94750b5936bd8b8b2dd5bcd27b9e14'

  url "https://aptonic.com/dropzone3/sparkle/Dropzone-#{version}.zip"
  appcast 'https://aptonic.com/dropzone3/sparkle/updates.xml',
          checkpoint: '4e7dbd04255ff5fcbe8bd32e3ac259b83622421f9ff473f0a670b1a9109a8545'
  name 'Dropzone'
  homepage 'https://aptonic.com'
  license :commercial

  app "Dropzone #{version.major}.app"
end
