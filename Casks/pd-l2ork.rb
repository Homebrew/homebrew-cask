cask 'pd-l2ork' do
  version '2.4.3'
  sha256 '8a9f9e7829de08882ed1732c107f001fa27c2796c6a3751a69ea9405f3edfc2e'

  # github.com/agraef/purr-data was verified as official when first introduced to the cask
  url "https://github.com/agraef/purr-data/releases/download/#{version}/pd-l2ork-#{version}-osx_10.11-x86_64.zip"
  appcast 'https://github.com/agraef/purr-data/releases.atom',
          checkpoint: 'f07544a779166c15ef77d9255e3619cb9acb0ee798d0d6f17198e2f111196272'
  name 'Pd-l2ork'
  name 'Purr Data'
  homepage 'https://agraef.github.io/purr-data/'

  app 'Pd-l2ork.app'
  binary "#{appdir}/Pd-l2ork.app/Contents/Resources/app.nw/pd-l2ork"

  uninstall_preflight do
    set_permissions "#{appdir}/Pd-l2ork.app", '0777'
  end
end
