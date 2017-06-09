cask 'framer' do
  version '9285'
  sha256 'ce7677a2b9709a50d30140f121d6ca421acbd6c2856d56e8683f7613825f5f0d'

  # devmate.com/com.motif.framer was verified as official when first introduced to the cask
  url 'https://dl.devmate.com/com.motif.framer/FramerStudio.zip'
  appcast 'https://updates.devmate.com/com.motif.framer.xml',
          checkpoint: '6dfa8ba5cd6d10347a45433e2c70c92b47873569dcd2bbe3eca2cca30763dd07'
  name 'Framer'
  homepage 'https://framer.com/'

  app 'Framer.app'
end
