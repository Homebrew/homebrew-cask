cask :v1 => 'cdock' do
  version '8.3'
  sha256 '61dab68cac88e6855daf3d2ab0212292e643e6f6e0ae7209c057df91f57e3a05'

  url "https://github.com/w0lfschild/cDock/releases/download/v#{version}/cDock_v#{version}.zip"
  appcast 'https://github.com/w0lfschild/cDock/releases.atom',
          :sha256 => 'c96e0fd594f7f0f1c1814f51e9e23ffb2948514f3515c455536409dcc9acbaf1'
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
