cask 'pd-l2ork' do
  version '2.2.1'
  sha256 'f11c122dcabfdec9acbfd78e4ca4654f6fe6fe61bb7e612d54825a0289908753'

  # github.com/agraef/purr-data was verified as official when first introduced to the cask
  url "https://github.com/agraef/purr-data/releases/download/#{version}/pd-l2ork-#{version}-osx_10.11-amd64.dmg"
  appcast 'https://github.com/agraef/purr-data/releases.atom',
          checkpoint: '97a5f064e9efe23c3ef5b95afac77b5398e5f9464fb52d886b75b85bd198ae5e'
  name 'Pd-l2ork'
  name 'Purr Data'
  homepage 'https://agraef.github.io/purr-data/'

  app 'Pd-l2ork.app'
  binary "#{appdir}/Pd-l2ork.app/Contents/Resources/app.nw/pd-l2ork"

  uninstall_preflight do
    set_permissions "#{appdir}/Pd-l2ork.app", '0777'
  end
end
