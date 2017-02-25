cask 'casefile' do
  version 'v2.1.1.8751'
  sha256 'd9b330471e6d03a9af436fc45f5ab46b1038bc437cda3b753371733cb813c97c'

  url "https://www.paterva.com/cf211/MaltegoCaseFile.#{version}.dmg"
  name 'Maltego CaseFile'
  homepage 'https://www.paterva.com/web7/buy/maltego-clients/casefile.php'

  app "Maltego CaseFile v#{version.major_minor_patch}.app"
end
