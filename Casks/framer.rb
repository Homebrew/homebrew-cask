cask 'framer' do
  version '68'
  sha256 '8d88e8fd4e936a6baf731615a16aedd154f0d166899a09224608ee8e3cd11abb'

  # devmate.com/com.motif.framer was verified as official when first introduced to the cask
  url 'https://dl.devmate.com/com.motif.framer/FramerStudio.zip'
  appcast 'https://updates.devmate.com/com.motif.framer.xml',
          checkpoint: 'f79709418c2e56f08bf4c0572788d5756ae7a29dcc63d80ab1f3991f72b209eb'
  name 'Framer'
  homepage 'https://framerjs.com/'
  license :commercial

  app 'Framer.app'
end
