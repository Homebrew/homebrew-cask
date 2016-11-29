cask 'luyten' do
  version '0.5.0'
  sha256 '3317031309365498693a3a75661748c5c5b1a3425ef8458b9b244266282386e5'

  # github.com/deathmarine/Luyten was verified as official when first introduced to the cask
  url "https://github.com/deathmarine/Luyten/releases/download/v#{version}/luyten-OSX-#{version}.zip"
  appcast 'https://github.com/deathmarine/Luyten/releases.atom',
          checkpoint: 'aff98b5d8de9ef034ff5093eb58e5d1ab3711e963a589067fbf35f6ed177fae5'
  name 'Luyten'
  homepage 'https://deathmarine.github.io/Luyten/'

  app 'Luyten.app'
end
