cask 'principle' do
  version :latest
  sha256 :no_check

  # principleformac.com.s3.amazonaws.com was verified as official when first introduced to the cask
  url 'http://principleformac.com.s3.amazonaws.com/download/Principle_Latest.zip'
  name 'Principle'
  homepage 'http://principleformac.com/'

  app 'Principle.app'
end
