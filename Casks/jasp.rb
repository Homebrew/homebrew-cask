cask 'jasp' do
  version '0.8.6'
  sha256 '7e373b47348cc9b0dc0aa61957d0c829ef562845d3132293245dee2a9c929bab'

  url "https://static.jasp-stats.org/JASP-#{version}.dmg"
  name 'JASP'
  homepage 'https://jasp-stats.org/'

  app 'JASP.app'
end
