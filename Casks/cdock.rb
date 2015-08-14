cask :v1 => 'cdock' do
  version '9.4.1'
  sha256 'fbd7e672ef6e212355b2d05715da194298c1228e4d83b51124178461426dd769'

  url "https://github.com/w0lfschild/cDock/releases/download/v#{version}/cDock_v#{version}.zip"
  appcast 'https://github.com/w0lfschild/cDock/releases.atom',
          :sha256 => 'd59eb224a9b0c3affdcc8e2f8114f5c1f016dfc900377ddce9beeb5d636c040c'
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
