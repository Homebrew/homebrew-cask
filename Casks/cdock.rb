cask :v1 => 'cdock' do
  version '0.9.7'
  sha256 '45c87cd2dbed30038bc2ecefa2ddda2c27eb37eb7c3f3a11657d68f8cec16a32'

  url "https://github.com/w0lfschild/cDock/releases/download/cDock2-#{version}/cDock.zip"
  appcast 'https://github.com/w0lfschild/cDock/releases.atom',
          :sha256 => 'aee72070788692bd02336b610f77e2ac67a1d1a663fe6feda8414b953b63968d'
  name 'cDock2'
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
