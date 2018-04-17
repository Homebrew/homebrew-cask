cask 'find-any-file' do
  version '1.9.2'
  sha256 '2d56ee022617f1bf6f901f9437fae50d0e80aaaddd4493fc7eeda19461a3e242'

  # files.tempel.org.s3.amazonaws.com was verified as official when first introduced to the cask
  url "http://files.tempel.org.s3.amazonaws.com/FindAnyFile_#{version}.zip"
  appcast 'http://apps.tempel.org/FindAnyFile/appcast.xml',
          checkpoint: 'fbc3c15a6e4a35a8fb73da18e696a0e1b7f8779f05c8c8e9b5981df170f95fc4'
  name 'Find Any File'
  homepage 'http://apps.tempel.org/FindAnyFile/'

  app 'Find Any File.app'

  zap trash: '~/Library/Application Support/Find Any File'
end
