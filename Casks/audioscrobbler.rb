cask 'audioscrobbler' do
  version '0.9.15'
  sha256 'd14bd947f32a5e6c17645d9378b69b0aded91b95dd87a9a8971e013a8fff5063'

  url "https://github.com/mxcl/Audioscrobbler.app/releases/download/#{version}/Audioscrobbler-#{version}.zip"
  appcast 'https://github.com/mxcl/Audioscrobbler.app/releases.atom',
          checkpoint: '1edc614869d23531590f02ca14870b2a439d98cf23fb141c9f23412b8b822d35'
  name 'Audioscrobbler'
  homepage 'https://github.com/mxcl/Audioscrobbler.app'

  app 'Audioscrobbler.app'
end
