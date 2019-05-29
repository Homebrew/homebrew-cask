cask 'find-any-file' do
  version '1.9.3'
  sha256 '43a756641076388ff2080fcb0aa4e12d6619503b8daada99c0a20a6025cfba01'

  # files.tempel.org.s3.amazonaws.com was verified as official when first introduced to the cask
  url "http://files.tempel.org.s3.amazonaws.com/FindAnyFile_#{version}.zip"
  appcast 'https://apps.tempel.org/FindAnyFile/appcast.xml'
  name 'Find Any File'
  homepage 'https://apps.tempel.org/FindAnyFile/'

  app 'Find Any File.app'

  zap trash: '~/Library/Application Support/Find Any File'
end
