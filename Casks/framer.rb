cask 'framer' do
  version '18175,1525441270'
  sha256 '9243305c6c23bc9812403d7959cc6894b79acbb58f0933413795729b08160d5f'

  # devmate.com/com.motif.framer was verified as official when first introduced to the cask
  url "https://dl.devmate.com/com.motif.framer/#{version.before_comma}/#{version.after_comma}/FramerStudio-#{version.before_comma}.zip"
  appcast 'https://updates.devmate.com/com.motif.framer.xml',
          checkpoint: '6ad98327aebbf41506b4bc9c22e8d2729c05d91be4bbd350848db3073a01b077'
  name 'Framer'
  homepage 'https://framer.com/'

  depends_on macos: '>= :sierra'

  app 'Framer.app'
end
