cask 'pd-l2ork' do
  version '2.10.1'
  sha256 '3c899164df5bd753bb9fecf0c406af318a611acdb75c9175407aa304ff02e432'

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
