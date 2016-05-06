cask 'qlstephen' do
  version '1.4.3'
  sha256 '73f9a467ba2eb4244ffe1dbf9be435d3481a438c8ec64d2bd9bb1ba60d576a66'

  # github.com/downloads/whomwah/qlstephen was verified as official when first introduced to the cask
  url "https://github.com/whomwah/qlstephen/releases/download/#{version}/QLStephen.qlgenerator.#{version}.zip"
  appcast 'https://github.com/whomwah/qlstephen/releases.atom',
          checkpoint: '6cf8bb2decd2e475f96e024cdd7c265266361417b4d30520def92c31eb951c3b'
  name 'QLStephen'
  homepage 'https://whomwah.github.io/qlstephen/'
  license :mit

  qlplugin 'QLStephen.qlgenerator'
end
