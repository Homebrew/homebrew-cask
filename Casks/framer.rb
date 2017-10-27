cask 'framer' do
  version '15539'
  sha256 'a5defef626cd537ab368faa739592be3a12a50f5e4d22bbe9b6ecce88e621ff8'

  # devmate.com/com.motif.framer was verified as official when first introduced to the cask
  url 'https://dl.devmate.com/com.motif.framer/FramerStudio.zip'
  appcast 'https://updates.devmate.com/com.motif.framer.xml',
          checkpoint: '0f090155d53ff71498717b6cd835dec1edb6b8bc0e7d408e1a5ede7ba028adae'
  name 'Framer'
  homepage 'https://framer.com/'

  app 'Framer.app'
end
