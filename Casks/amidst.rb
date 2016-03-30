cask 'amidst' do
  version '4.1'
  sha256 '1947e62afcfd492d77fe121d1f56c67be52411adf225db45834a3a1423a64747'

  url "https://github.com/toolbox4minecraft/amidst/releases/download/v#{version}/amidst-v#{version.dots_to_hyphens}.zip"
  appcast 'https://github.com/toolbox4minecraft/amidst/releases.atom',
          checkpoint: 'e1d27d503a5438a4442f5eb1f7975c1872c58e856b7c44d061bccd82a781a1fe'
  name 'amidst'
  homepage 'https://github.com/toolbox4minecraft/amidst'
  license :gpl

  app 'Amidst.app'
end
