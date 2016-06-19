cask 'framer' do
  version '65'
  sha256 '40fa6f1a4c65ff130a761cad59e010272b53507b8e58d80992901e04fdb7885b'

  # devmate.com/com.motif.framer was verified as official when first introduced to the cask
  url 'https://dl.devmate.com/com.motif.framer/FramerStudio.zip'
  appcast 'https://updates.devmate.com/com.motif.framer.xml',
          checkpoint: '2838e661847e722e97546ce47f12f2ab8926bb60e0fbf0dd239c176a57b6685e'
  name 'Framer'
  homepage 'http://framerjs.com/'
  license :commercial

  app 'Framer.app'
end
