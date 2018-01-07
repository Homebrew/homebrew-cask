cask 'pingendo' do
  version '4.0'
  sha256 '8bd102c73e98b4f5085b4908526b9af1b3dd24cbea9bb7d622674049258d1b69'

  # pingendoauth.appspot.com was verified as official when first introduced to the cask
  url "https://firebasestorage.googleapis.com/v0/b/pingendoauth.appspot.com/o/Pingendo%20#{version}.dmg?alt=media&amp;token=0621d7bf-a02b-4901-91ba-7d8a25f95395"
  name 'Pingendo'
  homepage 'https://pingendo.com/'

  app "Pingendo #{version}.app"
end
