cask 'framer' do
  version '9691'
  sha256 'b74b764686414ea7efad7b96225e75d7e3e513fd395ab0ccf0aac95f662b977b'

  # devmate.com/com.motif.framer was verified as official when first introduced to the cask
  url 'https://dl.devmate.com/com.motif.framer/FramerStudio.zip'
  appcast 'https://updates.devmate.com/com.motif.framer.xml',
          checkpoint: '5bb851ffb369f7b592182f67c25056bd0fd841f35ff24769493d9122100196fc'
  name 'Framer'
  homepage 'https://framer.com/'

  app 'Framer.app'
end
