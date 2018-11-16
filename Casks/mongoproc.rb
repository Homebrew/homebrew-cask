cask 'mongoproc' do
  version '3.1.1'
  sha256 '4c4e607321325dac1f4e955edfbe70bd54b00ce3a08f27fbefc2e7455f8faee9'

  # s3.amazonaws.com/edu-downloads.10gen.com was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/edu-downloads.10gen.com/#{version.major_minor}/mongoProc_#{version}_mac.dmg"
  name 'MongoProc'
  homepage 'https://university.mongodb.com/mongoproc'

  app 'mongoProc.app'
end
