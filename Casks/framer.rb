cask 'framer' do
  version '73'
  sha256 '1c507d3d831fc63016d4644c207d05b97f8e76bcc927d745c9bedbc05cf2f801'

  # devmate.com/com.motif.framer was verified as official when first introduced to the cask
  url 'https://dl.devmate.com/com.motif.framer/FramerStudio.zip'
  appcast 'https://updates.devmate.com/com.motif.framer.xml',
          checkpoint: '25167a36b1905494373c6440e6b8288a8bc38a220945bc55e3f7057f465dfc74'
  name 'Framer'
  homepage 'https://framerjs.com/'

  app 'Framer.app'
end
