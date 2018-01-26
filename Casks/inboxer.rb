cask 'inboxer' do
  version '1.0.0'
  sha256 'e51194476a3786588be87eea89cede0a17781069bc426e81e38ce1d6b0fa9323'

  # github.com/denysdovhan/inboxer was verified as official when first introduced to the cask
  url "https://github.com/denysdovhan/inboxer/releases/download/v#{version}/inboxer-#{version}-mac.zip"
  appcast 'https://github.com/denysdovhan/inboxer/releases.atom',
          checkpoint: '23af90f39ff64aec97e528c53b925f45ae7860fb425ede4cb07079d18e3082ed'
  name 'inboxer'
  homepage 'https://denysdovhan.com/inboxer'

  app 'inboxer.app'
end
