cask 'iina' do
  version '0.0.1'
  sha256 'bfd2ebd9d615cf380814e0c4f334d6ee349e11f5178841e82a08d1e542677c53'

  # github.com/lhc70000/iina was verified as official when first introduced to the cask
  url "https://github.com/lhc70000/iina/releases/download/v#{version}/IINA.v#{version}.zip"
  appcast 'https://github.com/lhc70000/iina/releases.atom',
          checkpoint: '5ea6da7163d7181a2d86646edc7971f7fecb5841f9e5920de18487269f9da4b9'
  name 'IINA'
  homepage 'https://lhc70000.github.io/iina/'

  app 'IINA.app'
end
