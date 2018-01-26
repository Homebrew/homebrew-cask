cask 'framer' do
  version '17676,1516724546'
  sha256 '06c26efc76f0b8ca79d96e3bd54e4f68971316cb3d0040781cd4ee780a198659'

  # devmate.com/com.motif.framer was verified as official when first introduced to the cask
  url "https://dl.devmate.com/com.motif.framer/#{version.before_comma}/#{version.after_comma}/FramerStudio-#{version.before_comma}.zip"
  appcast 'https://updates.devmate.com/com.motif.framer.xml',
          checkpoint: '4ce23bfe350d509df35265faad8f51aee2d75016d3f96fe1a32f8478ac0d94f1'
  name 'Framer'
  homepage 'https://framer.com/'

  app 'Framer.app'
end
