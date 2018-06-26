cask 'scythebill' do
  version '14.0.0'
  sha256 '61cc8f2f7a6a47c6d689a82710efe9533a1afb309b5d2a7847544fc56f2a2825'

  # storage.googleapis.com/scythebill-releases was verified as official when first introduced to the cask
  url "https://storage.googleapis.com/scythebill-releases/Scythebill-#{version}.dmg"
  appcast 'https://www.scythebill.com/download.html'
  name 'Scythebill'
  homepage 'https://www.scythebill.com/'

  app 'Scythebill.app'

  caveats do
    depends_on_java
  end
end
