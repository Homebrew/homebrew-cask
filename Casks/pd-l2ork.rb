cask 'pd-l2ork' do
  version '2.4.9'
  sha256 '5e380d987a6f259f2441117858703b5e0053c4f96f0defbdf03ba89ac11fc3e5'

  # github.com/agraef/purr-data was verified as official when first introduced to the cask
  url "https://github.com/agraef/purr-data/releases/download/#{version}/pd-l2ork-#{version}-osx_10.11-x86_64.zip"
  appcast 'https://github.com/agraef/purr-data/releases.atom',
          checkpoint: '2b142a316395fa34411d623883de2fa1d580d161c74d2ad46f9cb09b8ae1eda0'
  name 'Pd-l2ork'
  name 'Purr Data'
  homepage 'https://agraef.github.io/purr-data/'

  app 'Pd-l2ork.app'
  binary "#{appdir}/Pd-l2ork.app/Contents/Resources/app.nw/pd-l2ork"

  uninstall_preflight do
    set_permissions "#{appdir}/Pd-l2ork.app", '0777'
  end
end
