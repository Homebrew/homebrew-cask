cask 'framer' do
  version '15702'
  sha256 'd36fe6aaf581275a55e9abb54733ebd0c7f319629d4e5a496c0f098e590923d7'

  # devmate.com/com.motif.framer was verified as official when first introduced to the cask
  url 'https://dl.devmate.com/com.motif.framer/FramerStudio.zip'
  appcast 'https://updates.devmate.com/com.motif.framer.xml',
          checkpoint: 'b74adf59d71aae40cd0b5fbd58480ba558f28527795176f89b53ff9f74c34c45'
  name 'Framer'
  homepage 'https://framer.com/'

  app 'Framer.app'
end
