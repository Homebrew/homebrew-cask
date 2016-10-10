cask 'amidst' do
  version '4.1'
  sha256 '1947e62afcfd492d77fe121d1f56c67be52411adf225db45834a3a1423a64747'

  url "https://github.com/toolbox4minecraft/amidst/releases/download/v#{version}/amidst-v#{version.dots_to_hyphens}.zip"
  appcast 'https://github.com/toolbox4minecraft/amidst/releases.atom',
          checkpoint: '7c3d717bce58f93817928daaee850630f6d3237fe79c1d41a57958961b859eb9'
  name 'amidst'
  homepage 'https://github.com/toolbox4minecraft/amidst'

  app 'Amidst.app'
end
