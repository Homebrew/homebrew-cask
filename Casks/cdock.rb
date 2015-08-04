cask :v1 => 'cdock' do
  version '9.3.1'
  sha256 '906ed8961c0fc80860d58722be43a2ff82b1f5e0e2d9cb17bceadbf11e0d6369'

  url "https://github.com/w0lfschild/cDock/releases/download/v#{version}/cDock_v#{version}.zip"
  appcast 'https://github.com/w0lfschild/cDock/releases.atom',
          :sha256 => '48155cef78a6bd987d2c2a3d7b1a82cc5a8582aff895edfe28fda29964cfcafa'
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
