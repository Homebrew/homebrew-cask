cask :v1 => 'cdock' do
  version '0.9.8'
  sha256 'b3de2eb88db355f28a22adb2fb173c28086c438b582b2d2f0e59c3d937fd12f4'

  url "https://github.com/w0lfschild/cDock2/releases/download/v#{version}/cDock.zip"
  appcast 'https://github.com/w0lfschild/cDock2/releases.atom',
          :sha256 => '962f344212a4dfdfb421854d1151dbab96336c87fda9f9105748b4d1a5770392'
  name 'cDock2'
  name 'cDock'
  homepage 'http://w0lfschild.github.io/cdock'
  license :bsd

  app 'cDock.app'

  caveats <<-EOS.undent
    #{token} will only run from within /Applications,
    and will request to be moved at launch.
  EOS

  depends_on :cask => 'easysimbl'
  depends_on :macos => '>= :mavericks'
end
