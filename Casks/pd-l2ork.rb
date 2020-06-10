cask 'pd-l2ork' do
  version '2.11.0'
  sha256 'b30ee278d8417ee0edab353004e9f4b47edeb725357ca1598d2a0117b0c8c95b'

  # github.com/agraef/purr-data/ was verified as official when first introduced to the cask
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
