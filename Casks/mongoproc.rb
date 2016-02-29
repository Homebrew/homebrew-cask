cask 'mongoproc' do
  version '3.1'
  sha256 'cc4d2dfc94ae8df014ac0e317663e074e5d128c61df851e19da0fec9912d2a0e'

  # amazonaws.com is the official download host per the vendor homepage
  url "https://s3.amazonaws.com/edu-downloads.10gen.com/#{version}/mongoProc_#{version}_mac.dmg"
  name 'MongoProc'
  homepage 'https://university.mongodb.com/mongoproc'
  license :gratis

  app 'mongoProc.app'
end
