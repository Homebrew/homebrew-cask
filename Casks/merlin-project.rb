cask 'merlin-project' do
  version '5.0.12'
  sha256 'ef0f2e27efdabb9f7c2f22049f46b6e18f930d96f6857e19266ef4f7052b6387'

  url 'https://www.projectwizards.net/downloads/MerlinProject.zip'
  appcast 'https://www.projectwizards.net/en/support/release-notes/merlin-project-pwstore/xml'
  name 'Merlin Project'
  homepage 'https://www.projectwizards.net/en/products/merlin-project/what-is'

  app "Merlin Project #{version.major}.app"
end
