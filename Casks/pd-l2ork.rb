cask 'pd-l2ork' do
  version '2.5.1'
  sha256 '170899bfa1650818f7dbda5d2bbee20a238aa89de39669518d94ac1770be3dad'

  # github.com/agraef/purr-data was verified as official when first introduced to the cask
  url "https://github.com/agraef/purr-data/releases/download/#{version}/pd-l2ork-#{version}-osx_10.11-x86_64-dmg.zip"
  appcast 'https://github.com/agraef/purr-data/releases.atom',
          checkpoint: '7b281c15cbe54d8e878ce501537d79a232657cd726d8ecc7c417258912a920e2'
  name 'Pd-l2ork'
  name 'Purr Data'
  homepage 'https://agraef.github.io/purr-data/'

  app 'Pd-l2ork.app'
  binary "#{appdir}/Pd-l2ork.app/Contents/Resources/app.nw/pd-l2ork"

  uninstall_preflight do
    set_permissions "#{appdir}/Pd-l2ork.app", '0777'
  end
end
