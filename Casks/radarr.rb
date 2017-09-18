cask 'radarr' do
  version '0.2.0.846'
  sha256 'af765a5081b3cd40e51cd538d89cec2f06450ce4e185f71c3e6a19493589167f'

  # github.com/Radarr/Radarr was verified as official when first introduced to the cask
  url "https://github.com/Radarr/Radarr/releases/download/v#{version}/Radarr.develop.#{version}.osx-app.zip"
  appcast 'https://github.com/Radarr/Radarr/releases.atom',
          checkpoint: 'b68f9ea3926bc81b262439f9eebbcfd92f6d45db65361301b75bb652fcb73ef3'
  name 'Radarr'
  homepage 'https://radarr.video/'

  app 'Radarr.app'
end
