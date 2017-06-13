cask 'fotomagico' do
  version '5.4.2-22652'
  sha256 'eb5cc2032db34ac6460313c18895842be9ca45bcb654dab71d2178babb81df75'

  url "https://cdn.boinx.com/software/fotomagico/Boinx_FotoMagico_#{version.major}_#{version}.app.zip"
  appcast 'https://www.boinx.com/d/connect//histories/fotomagico',
          checkpoint: '6163e011fc17f4335203652980ff318a7c616f74d78a516317cadbaa67ad7a0d'
  name 'FotoMagico'
  homepage 'https://www.boinx.com/fotomagico/'

  app "FotoMagico #{version.major}.app"
end
