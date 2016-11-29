cask 'audioscrobbler' do
  version '0.9.15'
  sha256 'd14bd947f32a5e6c17645d9378b69b0aded91b95dd87a9a8971e013a8fff5063'

  url "https://github.com/mxcl/Audioscrobbler.app/releases/download/#{version}/Audioscrobbler-#{version}.zip"
  appcast 'https://github.com/mxcl/Audioscrobbler.app/releases.atom',
          checkpoint: 'c222292ffd9650b768c3d0777af0afcba066cd7c099870f7bb47da8c54c33956'
  name 'Audioscrobbler'
  homepage 'https://github.com/mxcl/Audioscrobbler.app'

  app 'Audioscrobbler.app'
end
