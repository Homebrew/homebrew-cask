cask 'principle' do
  version '2.1.4'
  sha256 '1f3110b4be955576dda6458a85de264ed5f05e227199211678da457853b92b96'

  # principleformac.com.s3.amazonaws.com was verified as official when first introduced to the cask
  url 'http://principleformac.com.s3.amazonaws.com/download/Principle_Latest.zip'
  appcast 'http://principleformac.com/update2.xml',
          checkpoint: '3db849e42e30663501a646b50cffa942f6ab482ec5bb63646f2e4452424083ca'
  name 'Principle'
  homepage 'http://principleformac.com/'

  app 'Principle.app'
end
