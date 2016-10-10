cask 'cdock' do
  version '0.10.3'
  sha256 '2e54c96e1a7c61414454171f09c3d0c2c59451bdcb917dcf1cd31f0ce3ee772d'

  # github.com/w0lfschild/cDock2 was verified as official when first introduced to the cask
  url "https://github.com/w0lfschild/cDock2/releases/download/v#{version}/cDock.zip"
  appcast 'https://github.com/w0lfschild/cDock2/releases.atom',
          checkpoint: '152818010dd4d1f3c7988a188841ddb9ae4db143616ef504dcbd01ea340f5405'
  name 'cDock2'
  homepage 'https://w0lfschild.github.io/cdock'

  depends_on cask: 'easysimbl'
  depends_on macos: '>= :mavericks'

  app 'cDock.app'

  caveats <<-EOS.undent
    #{token} will only run from within /Applications,
    and will request to be moved at launch.
  EOS
end
