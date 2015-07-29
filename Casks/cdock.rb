cask :v1 => 'cdock' do
  version '9.0'
  sha256 '434ace68c426ee454e1a4fef093aa6b467d5348eed1ece8f569b5cbe33eee288'

  url "https://github.com/w0lfschild/cDock/releases/download/v#{version}/cDock_v#{version}.zip"
  appcast 'https://github.com/w0lfschild/cDock/releases.atom',
          :sha256 => 'fe2fdc1f4b485967d3725273bea4e21d1d121da7e686ed63392233e884b385c7'
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
