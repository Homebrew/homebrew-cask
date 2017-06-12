cask 'principle' do
  version '2.1.6'
  sha256 '1648d2fd4693770f91bcb2c5cc00b54b6b9d3b416e3915d8ee7168ebbbb0c955'

  # principleformac.com.s3.amazonaws.com was verified as official when first introduced to the cask
  url 'http://principleformac.com.s3.amazonaws.com/download/Principle_Latest.zip'
  appcast 'http://principleformac.com/update2.xml',
          checkpoint: 'df1921f3f0a2a37f6a93e694e5516f1bf3c76eb3bc420cbb4e2b8660df6309db'
  name 'Principle'
  homepage 'http://principleformac.com/'

  app 'Principle.app'
end
