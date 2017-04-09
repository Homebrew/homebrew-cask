cask 'fotomagico' do
  version '5.4.2-22652'
  sha256 'eb5cc2032db34ac6460313c18895842be9ca45bcb654dab71d2178babb81df75'

  url "https://cdn.boinx.com/software/fotomagico/Boinx_FotoMagico_#{version.major}_#{version}.app.zip"
  appcast 'https://www.boinx.com/d/connect//histories/fotomagico',
          checkpoint: '4d6df3a75a8c83c8504db84a99d5b94da07b0934bbffec43c6601500a00c0bcb'
  name 'FotoMagico'
  homepage 'https://www.boinx.com/fotomagico/'

  app "FotoMagico #{version.major}.app"
end
