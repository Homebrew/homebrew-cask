cask 'merlin-project' do
  version '5.0.11'
  sha256 '28072f50810fc72d5440b632ca97e8e38be4a7c0a7c62ff119c665d27d67b34c'

  url 'https://www.projectwizards.net/downloads/MerlinProject.zip'
  appcast 'https://www.projectwizards.net/en/support/release-notes/merlin-project-pwstore/xml'
  name 'Merlin Project'
  homepage 'https://www.projectwizards.net/en/products/merlin-project/what-is'

  app "Merlin Project #{version.major}.app"
end
