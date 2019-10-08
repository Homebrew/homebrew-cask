cask 'find-any-file' do
  version '2.0'
  sha256 '7aa7379e7d3f86d0a924d20fbd26ffab857178f5159c9a11b1bef0e0a08b5697'

  # s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/files.tempel.org/FindAnyFile_#{version}.zip"
  appcast 'https://apps.tempel.org/FindAnyFile/appcast.xml'
  name 'Find Any File'
  homepage 'https://apps.tempel.org/FindAnyFile/'

  app 'Find Any File.app'

  zap trash: '~/Library/Application Support/Find Any File'
end
