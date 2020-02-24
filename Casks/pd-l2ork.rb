cask 'pd-l2ork' do
  version '2.10.0'
  sha256 '01e9df56646c1ca841744a0cbf27dae7d4757854df0eb5ff07be6f29e2fcbc91'

  # github.com/agraef/purr-data was verified as official when first introduced to the cask
  url "https://github.com/agraef/purr-data/releases/download/#{version}/osx_10.11-x86_64-dmg.zip"
  appcast 'https://github.com/agraef/purr-data/releases.atom'
  name 'Pd-l2ork'
  name 'Purr Data'
  homepage 'https://agraef.github.io/purr-data/'

  app 'Pd-l2ork.app'
  binary "#{appdir}/Pd-l2ork.app/Contents/Resources/app.nw/pd-l2ork"

  uninstall_preflight do
    set_permissions "#{appdir}/Pd-l2ork.app", '0777'
  end
end
