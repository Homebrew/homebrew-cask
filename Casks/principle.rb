cask 'principle' do
  version '2.1.5'
  sha256 'a4d0de0b6ccc219ed85c7c072ad0c55c2474dab3afcf26ce6c8af483efde4ac9'

  # principleformac.com.s3.amazonaws.com was verified as official when first introduced to the cask
  url 'http://principleformac.com.s3.amazonaws.com/download/Principle_Latest.zip'
  appcast 'http://principleformac.com/update2.xml',
          checkpoint: 'c65bb0e45da84a8da4db63eb9647c822a60751f636cef0db577f8d30eb38d489'
  name 'Principle'
  homepage 'http://principleformac.com/'

  app 'Principle.app'
end
