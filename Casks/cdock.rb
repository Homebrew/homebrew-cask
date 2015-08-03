cask :v1 => 'cdock' do
  version '9.2'
  sha256 '4aabd3a834d4b5741fee0e060dbcb2e61ed07fa1f4b581e1ab0ca9eba786fef2'

  url "https://github.com/w0lfschild/cDock/releases/download/v#{version}/cDock_v#{version}.zip"
  appcast 'https://github.com/w0lfschild/cDock/releases.atom',
          :sha256 => 'ad7aeb8f765edd638eabfa086551fbe9d934f774f535bd173c2b2d7a61419769'
  name 'cDock'
  homepage 'http://w0lfschild.github.io/pages/cdock.html'
  license :bsd

  app 'cDock.app'

  caveats <<-EOS.undent
    #{token} will only run from within /Applications,
    and will request to be moved at launch.
  EOS

  depends_on :cask => 'easysimbl'
  depends_on :macos => '>= :mavericks'
end
