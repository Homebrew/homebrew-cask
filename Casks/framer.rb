cask 'framer' do
  version '78'
  sha256 '4642f7f9ff44a342e66a448a11b297cad9cd5bc5eaf3056d86f696b626d522d4'

  # devmate.com/com.motif.framer was verified as official when first introduced to the cask
  url 'https://dl.devmate.com/com.motif.framer/FramerStudio.zip'
  appcast 'https://updates.devmate.com/com.motif.framer.xml',
          checkpoint: '2e00f8514e71435ce5f663df82a034ec091157271e1e452f22df24b5612d17f8'
  name 'Framer'
  homepage 'https://framerjs.com/'

  app 'Framer.app'
end
