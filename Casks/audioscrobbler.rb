cask 'audioscrobbler' do
  version '0.9.15'
  sha256 'd14bd947f32a5e6c17645d9378b69b0aded91b95dd87a9a8971e013a8fff5063'

  url "https://github.com/mxcl/Audioscrobbler.app/releases/download/#{version}/Audioscrobbler-#{version}.zip"
  appcast 'https://github.com/mxcl/Audioscrobbler.app/releases.atom',
          checkpoint: '5f88616335c5cdc4e6355a1dc2f8ac0ff9062bee4b653e631e1b48e301329946'
  name 'Audioscrobbler'
  homepage 'https://github.com/mxcl/Audioscrobbler.app'
  license :gpl

  app 'Audioscrobbler.app'
end
