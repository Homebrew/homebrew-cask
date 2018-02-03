cask 'pd-l2ork' do
  version '2.4.8'
  sha256 '5aea80ec4f872a2480bb6a1a1b7aa7c9521135267a33a623f74c949ac64fe5d9'

  # github.com/agraef/purr-data was verified as official when first introduced to the cask
  url "https://github.com/agraef/purr-data/releases/download/#{version}/pd-l2ork-#{version}-osx_10.11-x86_64.zip"
  appcast 'https://github.com/agraef/purr-data/releases.atom',
          checkpoint: '57b6eba686ad3b329c111429a807fefa4b70a120d99047af80b20a132d78229a'
  name 'Pd-l2ork'
  name 'Purr Data'
  homepage 'https://agraef.github.io/purr-data/'

  app 'Pd-l2ork.app'
  binary "#{appdir}/Pd-l2ork.app/Contents/Resources/app.nw/pd-l2ork"

  uninstall_preflight do
    set_permissions "#{appdir}/Pd-l2ork.app", '0777'
  end
end
