cask 'ejectionseat' do
  version '1.4.4'
  sha256 'c2b6920ffa1f477a5542994045b8c583cffa2373d56d50c67e73745830cd6d17'
  
  url "https://github.com/pilotchute/EjectionSeat/releases/download/#{version}/EjectionSeat.app.zip"
  appcast 'https://github.com/pilotchute/EjectionSeat/releases.atom'
  name 'ejectionseat'
  homepage 'https://github.com/pilotchute/EjectionSeat'

  app 'EjectionSeat.app'
end
