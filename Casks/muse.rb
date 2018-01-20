cask 'muse' do
  version '4.0-alpha.1'
  sha256 '356dbcba6c4f56bb00b1cabfbd8f6556aacf4fa70937cc717ec55039e528742d'

  url "https://github.com/xzzz9097/Muse/releases/download/v#{version}/Muse.app.zip"
  appcast 'https://github.com/xzzz9097/Muse/releases.atom',
          checkpoint: '4560be159d9bba0347c2494ecdf5b53bdbcc8a50c8e22fa8b986baa32dcdb440'
  name 'Muse'
  homepage 'https://github.com/xzzz9097/Muse'

  app 'Muse.app'
end
