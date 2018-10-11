cask 'pd-l2ork' do
  version '2.6.0'
  sha256 'd5301d0b8ec6d8532e2b7516e712d1b1a0808061317da6fd8d416495f40523b6'

  # github.com/agraef/purr-data was verified as official when first introduced to the cask
  url "https://github.com/agraef/purr-data/releases/download/#{version}/pd-l2ork-#{version}-osx_10.11-x86_64-dmg.zip"
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
