cask 'automatic' do
  version '2.4.8.394'
  sha256 'f7902f27df769bdbf80cc15d234030ea64fbc507e53076c8aa0a0a863a3eb0b1'

  # com-codingcurious-downloads.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://com-codingcurious-downloads.s3.amazonaws.com/Automatic.#{version}.zip"
  appcast 'http://update.codingcurious.com/automatic/appcast2.xml',
          checkpoint: 'c03c7f501a677bce6e764089360eb0d57a495d0083c22606a9fc93e778197322'
  name 'Automatic'
  homepage 'https://codingcurious.com/otomatic/'

  prefpane 'Automatic.prefPane'
end
