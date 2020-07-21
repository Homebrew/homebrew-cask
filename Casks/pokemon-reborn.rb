cask 'pokemon-reborn' do
  version '18.4.3'
  sha256 '438933eb0696fddaa9969a16db8dd1fcfb61657752d509745618c85558534ef1'

  url "https://www.rebornevo.com/downloads/Reborn#{version}%204%20Fruits.zip"
  appcast 'https://www.rebornevo.com/pr/download/'
  name 'Pokemon Reborn'
  homepage 'https://www.rebornevo.com/'

  app 'Pokemon Reborn.app'
end
