cask 'framer-studio' do
  version '57'
  sha256 'e0a896c2f16a9995a113a106dad919176d5747d3f0d6a9626163ecbb92244c9d'

  # devmate.com/com.motif.framer was verified as official when first introduced to the cask
  url 'https://dl.devmate.com/com.motif.framer/FramerStudio.zip'
  appcast 'https://updates.devmate.com/com.motif.framer.xml',
          checkpoint: '23ceb0e9b17e3db34b9810426b34c8b9bd10ed1a95ec2b4bfcea80398dbefc4a'
  name 'Framer Studio'
  homepage 'http://framerjs.com/'
  license :commercial

  app 'Framer Studio.app'
end
