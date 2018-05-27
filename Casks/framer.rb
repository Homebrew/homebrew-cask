cask 'framer' do
  version '18184,1526378841'
  sha256 'bd9ea7dd6eb7be752b8cb6a7c514b639991bd8344fc132a3b876e656325fafa7'

  # devmate.com/com.motif.framer was verified as official when first introduced to the cask
  url "https://dl.devmate.com/com.motif.framer/#{version.before_comma}/#{version.after_comma}/FramerStudio-#{version.before_comma}.zip"
  appcast 'https://updates.devmate.com/com.motif.framer.xml',
          checkpoint: '898a621173c2e4bd2f309db086b5e02144234512617eca0aa84b8e607cbc3735'
  name 'Framer'
  homepage 'https://framer.com/'

  depends_on macos: '>= :sierra'

  app 'Framer.app'
end
