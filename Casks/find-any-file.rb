cask 'find-any-file' do
  version '1.9'
  sha256 'd01964c2a61df8c80ae925559025b21d95cd2436f528f14266c09ecd3382ed74'

  # files.tempel.org.s3.amazonaws.com was verified as official when first introduced to the cask
  url "http://files.tempel.org.s3.amazonaws.com/FindAnyFile_#{version}.zip"
  appcast 'http://apps.tempel.org/FindAnyFile/appcast.xml',
          checkpoint: '2b434e83f0c478ddd58e4b8864f5f5b3df276e6e892f4f6532c787f689073ff9'
  name 'Find Any File'
  homepage 'http://apps.tempel.org/FindAnyFile/'

  app 'Find Any File.app'

  zap trash: '~/Library/Application Support/Find Any File'
end
