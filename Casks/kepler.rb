cask 'kepler' do
  version '2.4'
  sha256 'efb0147bb93b7333269b2b71aae29a22c2c02b7a121091ac188aa3ca8de60760'

  url "https://code.kepler-project.org/code/kepler/releases/installers/#{version}/Kepler-#{version}.dmg"
  name 'Kepler'
  homepage 'https://kepler-project.org'

  suite "Kepler-#{version}"
end
