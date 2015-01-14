cask :v1 => 'audioscrobbler' do
  version '0.9.15'
  sha256 'd14bd947f32a5e6c17645d9378b69b0aded91b95dd87a9a8971e013a8fff5063'

  url "https://github.com/mxcl/Audioscrobbler.app/releases/download/#{version}/Audioscrobbler-#{version}.zip"
  name 'Audioscrobbler'
  homepage 'https://github.com/mxcl/Audioscrobbler.app'
  license :oss

  app 'Audioscrobbler.app'
end
