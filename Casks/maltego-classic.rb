cask 'maltego-classic' do
  version '4.0.8.9246'
  sha256 '9a36647f54760b0bba40634d19184470d5cdd073d3e4d772fdac3281c6b955fa'

  url "https://www.paterva.com/malv#{version.major}/classic/Maltego.v#{version}.dmg"
  name 'Paterva Maltego'
  homepage 'https://www.paterva.com/web7/buy/maltego-clients/maltego.php'

  app "Maltego Classic v#{version.major_minor_patch}.app"
end
