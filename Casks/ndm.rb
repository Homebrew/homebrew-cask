cask 'ndm' do
  version '0.0.4-beta'
  sha256 '204e2a3b769f4d9e215d85b6748ba2d8e8dff35b3be6cd3107540ad64d21f069'

  # github.com/720kb/ndm was verified as official when first introduced to the cask
  url "https://github.com/720kb/ndm/releases/download/#{version}/ndm-#{version}.dmg"
  appcast 'https://github.com/720kb/ndm/releases.atom',
          checkpoint: '4d14881a991e3657c760486eca870685762f1347964713575719b96c3ce0369e'
  name 'ndm'
  homepage 'https://720kb.github.io/ndm/'

  app 'ndm.app'
end
