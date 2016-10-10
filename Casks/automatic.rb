cask 'automatic' do
  version '2.4.8.394'
  sha256 'f7902f27df769bdbf80cc15d234030ea64fbc507e53076c8aa0a0a863a3eb0b1'

  # com-codingcurious-downloads.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://com-codingcurious-downloads.s3.amazonaws.com/Automatic.#{version}.zip"
  appcast 'http://update.codingcurious.com/automatic/appcast2.xml',
          checkpoint: '136d69f53b1873774a0bea357c570b1412f50034cda8909642ff8bb10ea75578'
  name 'Automatic'
  homepage 'http://codingcurious.com/automatic/'

  prefpane 'Automatic.prefPane'
end
