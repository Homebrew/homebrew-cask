cask 'pd-l2ork' do
  version '2.5.0'
  sha256 '84986de234df55facdfc84afbd746eb101e7bbd3f7e0d4b2d4c5b3592c91b444'

  # github.com/agraef/purr-data was verified as official when first introduced to the cask
  url "https://github.com/agraef/purr-data/releases/download/#{version}/pd-l2ork-#{version}-osx_10.11-x86_64.zip"
  appcast 'https://github.com/agraef/purr-data/releases.atom',
          checkpoint: '1c2c9ece7b00a5f95bc3c745b9c1b15128c2f98a263a951b4f5990d5025d1d5f'
  name 'Pd-l2ork'
  name 'Purr Data'
  homepage 'https://agraef.github.io/purr-data/'

  app 'Pd-l2ork.app'
  binary "#{appdir}/Pd-l2ork.app/Contents/Resources/app.nw/pd-l2ork"

  uninstall_preflight do
    set_permissions "#{appdir}/Pd-l2ork.app", '0777'
  end
end
