cask 'mongoproc' do
  version '3.0'
  sha256 'f453b079f4df63b9439265dda20d7dd9ceb2889148d3c2155ff8c6780bc90af4'

  # amazonaws.com is the official download host per the vendor homepage
  url "https://s3.amazonaws.com/edu-downloads.10gen.com/#{version}/mongoProc_#{version}_mac.dmg"
  name 'MongoProc'
  homepage 'https://university.mongodb.com/mongoproc'
  license :gratis

  app 'mongoProc.app'
end
