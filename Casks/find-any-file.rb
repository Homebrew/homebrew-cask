cask 'find-any-file' do
  version '1.9.4'
  sha256 '16cd8f8ecd4d20f5aa56ecbe71a73ab864842f6411d59425abe77d24c6017b8d'

  # s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/files.tempel.org/FindAnyFile_#{version}.zip"
  appcast 'https://apps.tempel.org/FindAnyFile/appcast.xml'
  name 'Find Any File'
  homepage 'https://apps.tempel.org/FindAnyFile/'

  app 'Find Any File.app'

  zap trash: '~/Library/Application Support/Find Any File'
end
