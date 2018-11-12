cask 'flashlight' do
  version '1.0.1'
  sha256 'b1d6172d1fb7901fdb50c7d4b2fc185ea324df8ae86158669c635babbfb85aec'

  # github.com/nate-parrott/Flashlight was verified as official when first introduced to the cask
  url "https://github.com/nate-parrott/Flashlight/releases/download/v#{version}/Flashlight.zip"
  appcast 'https://github.com/nate-parrott/Flashlight/releases.atom'
  name 'Flashlight'
  homepage 'https://flashlight.nateparrott.com/'

  app 'Flashlight.app'
end
