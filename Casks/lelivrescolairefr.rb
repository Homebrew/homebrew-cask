cask 'lelivrescolairefr' do
  version '1.0.4'
  sha256 'eaeaab1e63ef3299b0c3b9b219daf5de1c4e14c374011924503c558e6e7ad346'

  # ci.lls.fr was verified as official when first introduced to the cask
  url "https://ci.lls.fr/artefacts/apps/desktop/legacy/#{version}/production/mac/x64/Lelivrescolaire.fr.dmg"
  name 'Lelivrescolaire.fr'
  homepage 'https://www.lelivrescolaire.fr/'

  app 'Lelivrescolaire.fr.app'
end
