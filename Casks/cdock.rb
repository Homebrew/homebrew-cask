cask 'cdock' do
  version '0.10.3'
  sha256 '2e54c96e1a7c61414454171f09c3d0c2c59451bdcb917dcf1cd31f0ce3ee772d'

  # github.com/w0lfschild/cDock2 was verified as official when first introduced to the cask
  url "https://github.com/w0lfschild/cDock2/releases/download/v#{version}/cDock.zip"
  appcast 'https://github.com/w0lfschild/cDock2/releases.atom',
          checkpoint: 'dbb05a1906f9b1572f35a4ada2212f784e0d1f0a02f94fa0cdf025d6a004ec02'
  name 'cDock2'
  homepage 'https://w0lfschild.github.io/cdock'

  depends_on cask: 'easysimbl'
  depends_on macos: '>= :mavericks'

  app 'cDock.app'

  caveats <<~EOS
    #{token} will only run from within /Applications,
    and will request to be moved at launch.
  EOS
end
